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


display = Xlib.display.Display()


class Window():
    def __init__(self, window_id):
        self.id = window_id
        self.x = None
        self.y = None
        self.width = None
        self.xlib = display.create_resource_object('window', int(window_id, 16))
        self.is_moving = False
        self.fetch_geometry()
        self.bar = Bar(self)

    def spawn_bar(self):
        self.bar = Bar(self)

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
        if size_changed:
            self.bar.update_size_quickly()
        elif position_changed:
            self.bar.update_position()

    def watcher(self):
        while self.is_moving:
            self.update_bar()
            sleep(0.016)  # about 60 FPS

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
        self.window = window
        self.name = uuid4().hex
        self.spawn()
        self.update_zindex()
        Thread(target=self.set_title, args=("KEK",)).start()
        Thread(target=self.fetch_wid).start()

    def spawn(self):
        self.proc = pexpect.spawn(" ".join([
            'lemonbar', 
            '-g', '{0}x32+{1}+{2}'.format(
                self.window.width,
                self.window.x,
                int(self.window.y) - 32
            ),
            # '-d',                           # force docking
            '-B', "#282C34",                # background color
            '-p',                           # permanent
            '-f', '"Iosevka Term:size=9"',
            '-n', self.name                 # unique name
        ]))

    def fetch_wid(self):
        sleep(0.3)
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
        self.proc.sendline("%{O12}" + title + "%{r}%{B#9D1A3C}%{O13}×%{O13}%{B-}")

    def update_position(self):
        if self.xlib:
            self.xlib.configure(x=self.window.x, y=self.window.y - 32)
            self.xlib.get_geometry()

    def update_size(self):
        old_proc = self.proc
        self.__init__(self.window)
        t = Thread(target=proc_terminator, args=(old_proc,))
        t.start()

    def update_size_quickly(self):
        if self.xlib:
            self.xlib.configure(x=self.window.x, y=self.window.y - 32, width=self.window.width)
            self.xlib.get_geometry()

    def update_zindex(self):
        command = " ".join([
            'xdo', 'below',
            '-a', self.name,
            self.window.id
        ])
        print(command)
        xdo = subprocess.Popen(command, shell=True)

    def terminate(self):
        self.proc.terminate()

    def terminate_async(self):
        t = Thread(target=self.terminate)
        t.start()


def get_floating_windows_ids():
    bspc = subprocess.Popen(
        ' '.join([
            'bspc', 'query', '-N',
            '-n', '.floating',
            '-d', 'focused'
        ]),
        shell=True,
        stdout=subprocess.PIPE
    )
    for line in bspc.stdout:
        yield line.decode("utf-8").strip()


windows = {}

for w_id in get_floating_windows_ids():
    windows.update({w_id: Window(w_id)})


subscribe = pexpect.spawn('bspc subscribe node_geometry pointer_action', timeout=None)

while subscribe.isalive():
    parts = subscribe.readline().decode('utf-8').strip().split(" ")
    event = parts[0]
    w_id = parts[3]
    if w_id in windows:
        window = windows[w_id]

        if event == "node_geometry":
            window.update_bar()

        if event == "pointer_action":
            event_type = parts[5]
            if event_type == "begin":
                window.watch()
            elif event_type == "end":
                window.unwatch()
