from time import time, sleep
from random import randint
import sys
import pexpect
import subprocess
import json
from uuid import uuid4
from threading import Thread
import Xlib
import Xlib.display
from Xlib.error import BadDrawable


display = Xlib.display.Display()

DEBUG = True

TITLEBAR_HEIGHT = 32
BTN_PADDING = int((TITLEBAR_HEIGHT - 6) / 2)
TITLE_OFFSET = BTN_PADDING

COLORS = {
    "default": {
        "bg": "#F5F6F7",
        "fg": "#5C616C"
    },
    "Firefox": {
        "bg": "#E7E8EB",
        "fg": "#5C616C"
    },
    "feh": {
        "bg": "#121212",
        "fg": "#888888"
    },
    "Blender": {
        "bg": "#555555",
        "fg": "#E8E8E8"
    },
    "Renoise": {
        "bg": "#2C2C2C",
        "fg": "#DADADA"
    },
    "Gnome-terminal": {
        "bg": "#23272E",
        "fg": "#ABB2BF"
    }
}

BLACKLIST = [
    "Bitwig Studio"
]

def debug(*args):
    if DEBUG:
        print(format(time(), '.4f'), "DEBUG:", *args)


class Window():
    def __init__(self, window_id):
        self.id = window_id
        self.x = None
        self.y = None
        self.width = None
        self.title = ""
        self.wm_class = ""
        self.xlib = display.create_resource_object('window', int(window_id, 16))
        self.is_moving = False
        self.fetch_geometry()
        self.fetch_props()
        self.bar = Bar(self)

    def spawn_bar(self):
        self.bar = Bar(self)

    def fetch_props(self):
        self.fetch_title()
        class_tuple = self.xlib.get_wm_class()
        self.wm_class = class_tuple[1] if len(class_tuple) > 1 else class_tuple[0]

    def fetch_title(self):
        new_title = None
        try:
            new_title = self.xlib.get_wm_name()
            if new_title != self.title:
                self.title = new_title
            else:
                new_title = None
        except TypeError as e:
            print("!!!!!!!!", e)
        return new_title

    def fetch_geometry(self):
        xlib_data = self.xlib.get_geometry()._data

        x = xlib_data.get('x')
        y = xlib_data.get('y')
        width = xlib_data.get('width')

        position_changed = self.x != x or self.y != y
        size_changed = self.width != width

        self.x = x
        self.y = y
        self.width = width

        return position_changed, size_changed

    def update_bar(self):
        position_changed, size_changed = self.fetch_geometry()
        if position_changed:
            self.bar.update_position()
        if size_changed:
            self.bar.update_size()

    def watcher(self):
        while self.is_moving:
            debug("updating bar for window", self.id)
            self.update_bar()
            sleep(0.5016)  # about 60 FPS

    def watch(self):
        self.is_moving = True
        self.width_before_manipulation = self.width
        t = Thread(target=self.watcher)
        t.start()

    def unwatch(self):
        self.is_moving = False
        if self.width != self.width_before_manipulation:
            self.bar.update_size()

def proc_terminator(proc):
    sleep(0.05)
    proc.terminate()

class Bar():
    def __init__(self, window):
        self.wid = None
        self.xlib = None
        self.mapped = False
        self.window = window
        self.name = uuid4().hex
        self.spawn()
        Thread(target=self.set_title, args=(self.window.title,)).start()
        Thread(target=self.fetch_wid).start()
        Thread(target=self.update_zindex).start()
        Thread(target=self.listen_clicks).start()
        Thread(target=self.refresh_title).start()

    def spawn(self):
        if self.window.wm_class in COLORS:
            palette = COLORS.get(self.window.wm_class)
        else:
            palette = COLORS.get('default')
        self.proc = pexpect.spawn(" ".join([
            'lemonbar', 
            '-g', '{0}x{3}+{1}+{2}'.format(
                self.window.width,
                self.window.x,
                int(self.window.y) - TITLEBAR_HEIGHT,
                TITLEBAR_HEIGHT
            ),
            # '-d',                         # force docking
            '-B', palette.get('bg'),        # background color
            '-F', palette.get('fg'),        # foreground color
            '-p',                           # permanent
            # '-f', '"Iosevka Term:size=9"',
            '-f', '"SF UI Display:size=9"',
            '-n', self.name                 # unique name
        ]), timeout=None)
        self.mapped = True

    def listen_clicks(self):
        while self.mapped and self.proc.isalive():
            command = self.proc.readline().decode('utf-8').strip()
            if command == "close":
                bspc_cmd = "bspc node " + str(self.window.id) + " -c"
                subprocess.Popen(bspc_cmd, shell=True)

    def refresh_title(self):
        while self.mapped:
            if self.window.fetch_title():
                self.set_title(self.window.title)
            sleep(0.5)

    def fetch_wid(self):
        sleep(0.1)
        xwininfo = subprocess.Popen(
            " ".join([
                'xwininfo',
                '-name', self.name,
                '|', 'grep', '"Window id"'
            ]),
            shell=True,
            stdout=subprocess.PIPE
        )
        for line in xwininfo.stdout:
            self.wid = line.decode("utf-8").strip().split(" ")[3]
        if self.wid:
            self.xlib = display.create_resource_object('window', int(self.wid, 16))

    def set_title(self, title):
        self.proc.sendline("%{O" + str(TITLE_OFFSET) + "}%{c}" + title + "%{r}%{B#9D1A3C}%{F#FFFFFF}%{A:close:}%{O" + str(BTN_PADDING) + "}×%{O" + str(BTN_PADDING) + "}%{A}%{B-}%{F-}")

    def update_position(self):
        if self.xlib:
            try:
                self.xlib.configure(x=self.window.x, y=self.window.y - TITLEBAR_HEIGHT)
                self.xlib.get_geometry()
            except BadDrawable as e:
                print("Moving too fast :)")

    def update_size(self):
        old_proc = self.proc
        self.__init__(self.window)
        t = Thread(target=proc_terminator, args=(old_proc,))
        t.start()

    def update_size_quickly(self):
        if self.xlib:
            self.xlib.configure(x=self.window.x, y=self.window.y - TITLEBAR_HEIGHT, width=self.window.width)
            self.xlib.get_geometry()

    def update_zindex(self):
        while not self.wid:
            sleep(0.016)
        command = " ".join([
            'xdo', 'above',
            '-t', self.window.id,
            self.wid
        ])
        xdo = subprocess.Popen(command, shell=True)

    def map(self):
        if self.xlib:
            self.xlib.map()
            self.xlib.get_geometry()
        self.mapped = True

    def unmap(self):
        if self.xlib:
            self.xlib.unmap()
            self.xlib.get_geometry()
        self.mapped = False

    def terminate(self):
        self.mapped = False
        self.proc.terminate()
        self.proc = None

    def terminate_async(self):
        t = Thread(target=self.terminate)
        t.start()


def get_visible_windows_ids():
    bspc = subprocess.Popen(
        # ' '.join([
            # 'bspc', 'query', '-N',
            # '-n', '.floating',
            # '-d', 'focused'
        # ]),
        ' '.join([
            'bspc', 'query', '-N',
            '-n', '.normal',
            '-d', 'focused'
        ]),
        shell=True,
        stdout=subprocess.PIPE
    )
    for line in bspc.stdout:
        yield line.decode("utf-8").strip()


windows = {}

def handle_visible_windows():
    for w_id in get_visible_windows_ids():
        debug("handling window", w_id)
        if w_id not in windows:
            windows.update({w_id: Window(w_id)})
        else:
            window = windows[w_id]
            window.fetch_geometry()
            window.bar.map()

handle_visible_windows()

subscribe = pexpect.spawn('bspc subscribe node_geometry pointer_action desktop_focus node_manage node_unmanage node_stack node_focus node_transfer', timeout=None)

while subscribe.isalive():
    parts = subscribe.readline().decode('utf-8').strip().split(" ")
    event = parts[0]
    if len(parts) > 3:
        w_id = parts[3]
        if w_id in windows:
            window = windows[w_id]

            if event == "node_geometry":
                window.update_bar()
            elif event == "pointer_action":
                event_type = parts[5]
                if event_type == "begin":
                    window.watch()
                elif event_type == "end":
                    window.unwatch()
            elif event == "node_stack":
                new_w_id = parts[1]
                window.bar.update_zindex()
                if new_w_id in windows:
                    new_window = windows[new_w_id]
                    new_window.bar.update_zindex()
            elif event == "node_unmanage":
                window.bar.unmap()
                window.bar.terminate_async()
                windows.pop(w_id, None)
            elif event == "node_focus":
                window.bar.update_zindex()
            elif event == "node_transfer":
                window.bar.unmap()
                window.bar.terminate_async()
                windows.pop(w_id, None)

        else:
            if event == "node_manage":
                windows.update({w_id: Window(w_id)})

    if event == "desktop_focus":
        for window in windows.values():
            window.bar.unmap()
        handle_visible_windows()
