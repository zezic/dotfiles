" curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
" sh ./installer.sh ~/.config/dein
" sudo pip3 install neovim
" sudo pip install neovim
" cd ~/.config/nvim
" python3 -m venv venv3
" source venv3/bin/activate
" pip install neovim
"
""" Then in nvim console:
" :UpdateRemotePlugins

let g:onedark_color_overrides = {
\ "red": { "gui": "#F07178", "cterm": "204", "cterm16": "1" },
\ "dark_red": { "gui": "#F07178", "cterm": "196", "cterm16": "9" },
\ "green": { "gui": "#C3E88D", "cterm": "114", "cterm16": "2" },
\ "yellow": { "gui": "#FFE082", "cterm": "180", "cterm16": "3" },
\ "dark_yellow": { "gui": "#FFCB6B", "cterm": "173", "cterm16": "11" },
\ "blue": { "gui": "#82AAFF", "cterm": "39", "cterm16": "4" },
\ "purple": { "gui": "#C792EA", "cterm": "170", "cterm16": "5" },
\ "cyan": { "gui": "#89DDF3", "cterm": "38", "cterm16": "6" },
\ "white": { "gui": "#B2CCD6", "cterm": "145", "cterm16": "7" },
\ "black": { "gui": "#263238", "cterm": "235", "cterm16": "0" },
\ "visual_black": { "gui": "NONE", "cterm": "NONE", "cterm16": "0" },
\ "comment_grey": { "gui": "#4F6875", "cterm": "59", "cterm16": "15" },
\ "gutter_fg_grey": { "gui": "#3E4A50", "cterm": "238", "cterm16": "15" },
\ "cursor_grey": { "gui": "#37625A", "cterm": "236", "cterm16": "8" },
\ "visual_grey": { "gui": "#2D3B42", "cterm": "237", "cterm16": "15" },
\ "menu_grey": { "gui": "#2D3B42", "cterm": "237", "cterm16": "8" },
\ "special_grey": { "gui": "#2D3B42", "cterm": "238", "cterm16": "15" },
\ "vertsplit": { "gui": "#202A2F", "cterm": "59", "cterm16": "15" }
\}


let g:python3_host_prog = $HOME.'/.config/nvim/venv3/bin/python3'


set runtimepath+=~/.config/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.config/dein')
  call dein#begin('~/.config/dein')
  call dein#add('~/.config/dein/repos/github.com/Shougo/dein.vim')

  call dein#add('joshdick/onedark.vim')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('zchee/deoplete-jedi')
  call dein#add('itchyny/lightline.vim')
  call dein#add('tpope/vim-fugitive')
  call dein#add('ctrlpvim/ctrlp.vim')
  call dein#add('majutsushi/tagbar')
  call dein#add('davidhalter/jedi-vim')
  call dein#add('sjl/gundo.vim')
  call dein#add('scrooloose/nerdtree')
  "call dein#add('vim-syntastic/syntastic')
  call dein#add('Xuyuanp/nerdtree-git-plugin')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('ap/vim-css-color')
  call dein#add('scrooloose/nerdcommenter')
  call dein#add('nathanaelkane/vim-indent-guides')
  call dein#add('digitaltoad/vim-pug')
  call dein#add('cakebaker/scss-syntax.vim')
  call dein#add('posva/vim-vue')
  "call dein#add('mattn/emmet-vim')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

" Plugins
let g:indent_guides_enable_on_vim_startup = 0 " Indent guides
let g:deoplete#enable_at_startup = 1 " Autocompletion
let g:jedi#completions_enabled = 0 " Disable vim-jedi completion
let NERDTreeIgnore=['\.pyc$', '\~$', '__pycache__']
autocmd BufWinEnter '__doc__' setlocal bufhidden=delete " Don't show Jedi docs

" " Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = [
  \ 'pylama --ignore E0401']

" Behaviour
" set clipboard+=unnamedplus
set expandtab
set tabstop=2
set shiftwidth=2
set ignorecase
set smartcase

" Hotkeys
nmap <C-t> :TagbarToggle<CR>
nnoremap <F5> :GundoToggle<CR>
map <C-n> :NERDTreeToggle<CR>
map <C-_> :call NERDComment(1, 'toggle')<CR>
map <C-f> :noh<CR>

" UI
set nu
set relativenumber

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "~",
    \ "Staged"    : "+",
    \ "Untracked" : "*",
    \ "Renamed"   : "»",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "×",
    \ "Dirty"     : "!",
    \ "Clean"     : "∆",
    \ "Unknown"   : "?"
    \ }

let g:lightline = {
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'fugitive', 'filename', 'modified' ],
  \             [ 'ctrlpmark'] ],
  \   'right': [ [ 'syntastic', 'lineinfo' ],
  \              [ 'percent' ],
  \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
  \ },
  \ 'component_function': {
  \   'fugitive': 'LightlineFugitive',
  \   'ctrlpmark': 'CtrlPMark',
  \   'filename': 'LightlineFilename',
  \   'mode': 'LightlineMode',
  \   'fileformat': 'LightlineFileformat',
  \   'filetype': 'LightlineFiletype',
  \   'fileencoding': 'LightlineFileencoding'
  \ },
  \ 'component_expand': {
  \   'syntastic': 'SyntasticStatuslineFlag',
  \ },
  \ 'component_visible_condition': {
  \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
  \ },
  \ 'component_type': {
  \   'syntastic': 'error',
  \ },
  \ 'colorscheme': 'onedark',
  \ 'separator': { 'left': '▒', 'right': '▒' },
  \ 'subseparator': { 'left': '┆', 'right': '┆' }
  \ }

function! LightlineModified()
  return &ft =~ 'help' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightlineReadonly()
  return &ft !~? 'help' && &readonly ? 'RO' : ''
endfunction

function! LightlineFugitive()
  try
    if expand('%:t') !~? 'Tagbar\|Gundo\|NERD' && &ft !~? 'vimfiler' && exists('*fugitive#head')
      let mark = ''  " edit here for cool mark
      let branch = fugitive#head()
      return branch !=# '' ? mark.branch : ''
    endif
  catch
  endtry
  return ''
endfunction

function! LightlineFilename()
  let fname = expand('%:t')
  return fname == 'ControlP' && has_key(g:lightline, 'ctrlp_item') ? g:lightline.ctrlp_item :
        \ fname == '__Tagbar__' ? g:lightline.fname :
        \ fname =~ '__Gundo\|NERD_tree' ? '' :
        \ &ft == 'vimfiler' ? vimfiler#get_status_string() :
        \ &ft == 'unite' ? unite#get_status_string() :
        \ &ft == 'vimshell' ? vimshell#get_status_string() :
        \ ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
        \ ('' != fname ? fname : '[No Name]') .
        \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction

function! LightlineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightlineFiletype()
  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

function! LightlineFileencoding()
  return winwidth(0) > 70 ? (&fenc !=# '' ? &fenc : &enc) : ''
endfunction

function! LightlineMode()
  let fname = expand('%:t')
  return fname == '__Tagbar__' ? 'Tagbar' :
        \ fname == 'ControlP' ? 'CtrlP' :
        \ fname == '__Gundo__' ? 'Gundo' :
        \ fname == '__Gundo_Preview__' ? 'Gundo Preview' :
        \ fname =~ 'NERD_tree' ? 'NERDTree' :
        \ &ft == 'unite' ? 'Unite' :
        \ &ft == 'vimfiler' ? 'VimFiler' :
        \ &ft == 'vimshell' ? 'VimShell' :
        \ winwidth(0) > 60 ? lightline#mode() : ''
endfunction

function! CtrlPMark()
  if expand('%:t') =~ 'ControlP' && has_key(g:lightline, 'ctrlp_item')
    call lightline#link('iR'[g:lightline.ctrlp_regex])
    return lightline#concatenate([g:lightline.ctrlp_prev, g:lightline.ctrlp_item
          \ , g:lightline.ctrlp_next], 0)
  else
    return ''
  endif
endfunction

let g:ctrlp_status_func = {
  \ 'main': 'CtrlPStatusFunc_1',
  \ 'prog': 'CtrlPStatusFunc_2',
  \ }

function! CtrlPStatusFunc_1(focus, byfname, regex, prev, item, next, marked)
  let g:lightline.ctrlp_regex = a:regex
  let g:lightline.ctrlp_prev = a:prev
  let g:lightline.ctrlp_item = a:item
  let g:lightline.ctrlp_next = a:next
  return lightline#statusline(0)
endfunction

function! CtrlPStatusFunc_2(str)
  return lightline#statusline(0)
endfunction

let g:tagbar_status_func = 'TagbarStatusFunc'

function! TagbarStatusFunc(current, sort, fname, ...) abort
    let g:lightline.fname = a:fname
  return lightline#statusline(0)
endfunction

augroup AutoSyntastic
  autocmd!
  autocmd BufWritePost *.c,*.cpp call s:syntastic()
augroup END
function! s:syntastic()
  SyntasticCheck
  call lightline#update()
endfunction

" Syntax addons
" onedark.vim override: Don't set a background color when running in a terminal;
" just use the terminal's background color
" `gui` is the hex color code used in GUI mode/nvim true-color mode
" `cterm` is the color code used in 256-color mode
" `cterm16` is the color code used in 16-color mode
if (has("autocmd") && !has("gui"))
  let s:blue = { "gui": "#61AFEF", "cterm": "39", "cterm16": "4" } " Alternate cterm: 75
  let s:cyan = { "gui": "#56B6C2", "cterm": "38", "cterm16": "6" } " Alternate cterm: 73
  autocmd ColorScheme * call onedark#set_highlight("FCallKeyword", { "fg": s:cyan })
  autocmd ColorScheme * call onedark#set_highlight("FName", { "fg": s:blue })
end

" Look
set termguicolors
colorscheme onedark


" NERDCommenter Vue Tweaks
"let g:ft = ''
"fu! NERDCommenter_before()
  "if &ft == 'vue'
    "let g:ft = 'vue'
    "let stack = synstack(line('.'), col('.'))
    "if len(stack) > 0
      "let syn = synIDattr((stack)[0], 'name')
      "if len(syn) > 0
        "let syn = tolower(syn)
        "exe 'setf '.syn
      "endif
    "endif
  "endif
"endfu
"fu! NERDCommenter_after()
  "if g:ft == 'vue'
    "setf vue
    "g:ft
  "endif
"endfu
