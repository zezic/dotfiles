" curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
" sh ./installer.sh ~/.config/dein
" sudo pip3 install neovim pylint
" sudo pip install neovim
" cd ~/.config/nvim
" python3 -m venv venv3
" source venv3/bin/activate
" pip install neovim
" npm install -g tern
"
""" Then in nvim console:
" :UpdateRemotePlugins

""" Material
"let g:onedark_color_overrides = {
"\ "red": { "gui": "#F07178", "cterm": "204", "cterm16": "1" },
"\ "dark_red": { "gui": "#F07178", "cterm": "196", "cterm16": "9" },
"\ "green": { "gui": "#C3E88D", "cterm": "114", "cterm16": "2" },
"\ "yellow": { "gui": "#FFE082", "cterm": "180", "cterm16": "3" },
"\ "dark_yellow": { "gui": "#FFCB6B", "cterm": "173", "cterm16": "11" },
"\ "blue": { "gui": "#82AAFF", "cterm": "39", "cterm16": "4" },
"\ "purple": { "gui": "#C792EA", "cterm": "170", "cterm16": "5" },
"\ "cyan": { "gui": "#89DDF3", "cterm": "38", "cterm16": "6" },
"\ "white": { "gui": "#B2CCD6", "cterm": "145", "cterm16": "7" },
"\ "black": { "gui": "#263238", "cterm": "235", "cterm16": "0" },
"\ "visual_black": { "gui": "NONE", "cterm": "NONE", "cterm16": "0" },
"\ "comment_grey": { "gui": "#4F6875", "cterm": "59", "cterm16": "15" },
"\ "gutter_fg_grey": { "gui": "#3E4A50", "cterm": "238", "cterm16": "15" },
"\ "cursor_grey": { "gui": "#37625A", "cterm": "236", "cterm16": "8" },
"\ "visual_grey": { "gui": "#2D3B42", "cterm": "237", "cterm16": "15" },
"\ "menu_grey": { "gui": "#2D3B42", "cterm": "237", "cterm16": "8" },
"\ "special_grey": { "gui": "#2D3B42", "cterm": "238", "cterm16": "15" },
"\ "vertsplit": { "gui": "#202A2F", "cterm": "59", "cterm16": "15" }
"\}

""" BW
"let g:onedark_color_overrides = {
"\ "red": { "gui": "#777777", "cterm": "204", "cterm16": "1" },
"\ "dark_red": { "gui": "#F07178", "cterm": "196", "cterm16": "9" },
"\ "green": { "gui": "#CCCCCC", "cterm": "114", "cterm16": "2" },
"\ "yellow": { "gui": "#666666", "cterm": "180", "cterm16": "3" },
"\ "dark_yellow": { "gui": "#555555", "cterm": "173", "cterm16": "11" },
"\ "blue": { "gui": "#595959", "cterm": "39", "cterm16": "4" },
"\ "purple": { "gui": "#AAAAAA", "cterm": "170", "cterm16": "5" },
"\ "cyan": { "gui": "#BBBBBB", "cterm": "38", "cterm16": "6" },
"\ "white": { "gui": "#999999", "cterm": "145", "cterm16": "7" },
"\ "black": { "gui": "#0d0d0d", "cterm": "235", "cterm16": "0" },
"\ "visual_black": { "gui": "NONE", "cterm": "NONE", "cterm16": "0" },
"\ "comment_grey": { "gui": "#333333", "cterm": "59", "cterm16": "15" },
"\ "gutter_fg_grey": { "gui": "#454545", "cterm": "238", "cterm16": "15" },
"\ "cursor_grey": { "gui": "#111111", "cterm": "236", "cterm16": "8" },
"\ "visual_grey": { "gui": "#222222", "cterm": "237", "cterm16": "15" },
"\ "menu_grey": { "gui": "#222222", "cterm": "237", "cterm16": "8" },
"\ "special_grey": { "gui": "#222222", "cterm": "238", "cterm16": "15" },
"\ "vertsplit": { "gui": "#111111", "cterm": "59", "cterm16": "15" }
"\}

""" Rebecca
  "let g:onedark_color_overrides = {
  "\ "red": { "gui": "#a0a0c5", "cterm": "204", "cterm16": "1" },
  "\ "dark_red": { "gui": "#efe4a1", "cterm": "196", "cterm16": "9" },
  "\ "green": { "gui": "#6dfedf", "cterm": "114", "cterm16": "2" },
  "\ "yellow": { "gui": "#ae81ff", "cterm": "180", "cterm16": "3" },
  "\ "dark_yellow": { "gui": "#ae81ff", "cterm": "173", "cterm16": "11" },
  "\ "blue": { "gui": "#2de0a7", "cterm": "39", "cterm16": "4" },
  "\ "purple": { "gui": "#7aa5ff", "cterm": "170", "cterm16": "5" },
  "\ "cyan": { "gui": "#8eaee0", "cterm": "38", "cterm16": "6" },
  "\ "white": { "gui": "#a0a0c5", "cterm": "145", "cterm16": "7" },
  "\ "black": { "gui": "#292a44", "cterm": "235", "cterm16": "0" },
  "\ "visual_black": { "gui": "NONE", "cterm": "NONE", "cterm16": "0" },
  "\ "comment_grey": { "gui": "#666699", "cterm": "59", "cterm16": "15" },
  "\ "gutter_fg_grey": { "gui": "#666699", "cterm": "238", "cterm16": "15" },
  "\ "cursor_grey": { "gui": "#663399", "cterm": "236", "cterm16": "8" },
  "\ "visual_grey": { "gui": "#383a62", "cterm": "237", "cterm16": "15" },
  "\ "menu_grey": { "gui": "#383a62", "cterm": "237", "cterm16": "8" },
  "\ "special_grey": { "gui": "#383a62", "cterm": "238", "cterm16": "15" },
  "\ "vertsplit": { "gui": "#383a62", "cterm": "59", "cterm16": "15" }
  "\}

""" Duotone Nature
 "let g:onedark_color_overrides = {
 "\ "red": { "gui": "#74AAD5", "cterm": "204", "cterm16": "1" },
 "\ "dark_red": { "gui": "#5D7E98", "cterm": "196", "cterm16": "9" },
 "\ "green": { "gui": "#B9DE91", "cterm": "114", "cterm16": "2" },
 "\ "yellow": { "gui": "#E8FFD0", "cterm": "180", "cterm16": "3" },
 "\ "dark_yellow": { "gui": "#D2EDB6", "cterm": "173", "cterm16": "11" },
 "\ "blue": { "gui": "#AFDAFD", "cterm": "39", "cterm16": "4" },
 "\ "purple": { "gui": "#546878", "cterm": "170", "cterm16": "5" },
 "\ "cyan": { "gui": "#546878", "cterm": "38", "cterm16": "6" },
 "\ "white": { "gui": "#97AEC1", "cterm": "145", "cterm16": "7" },
 "\ "black": { "gui": "#1D2A34", "cterm": "235", "cterm16": "0" },
 "\ "visual_black": { "gui": "NONE", "cterm": "NONE", "cterm16": "0" },
 "\ "comment_grey": { "gui": "#43505B", "cterm": "59", "cterm16": "15" },
 "\ "gutter_fg_grey": { "gui": "#45596A", "cterm": "238", "cterm16": "15" },
 "\ "cursor_grey": { "gui": "#C4E5FF", "cterm": "236", "cterm16": "8" },
 "\ "visual_grey": { "gui": "#283A48", "cterm": "237", "cterm16": "15" },
 "\ "menu_grey": { "gui": "#283A48", "cterm": "237", "cterm16": "8" },
 "\ "special_grey": { "gui": "#283A48", "cterm": "238", "cterm16": "15" },
 "\ "vertsplit": { "gui": "#283A48", "cterm": "59", "cterm16": "15" }
 "\}

""" Monokai
 " let g:onedark_color_overrides = {
 " \ "red": { "gui": "#eb3d7c", "cterm": "204", "cterm16": "1" },
 " \ "dark_red": { "gui": "#eb3d7c", "cterm": "196", "cterm16": "9" },
 " \ "green": { "gui": "#a8d54e", "cterm": "114", "cterm16": "2" },
 " \ "yellow": { "gui": "#FFD569", "cterm": "180", "cterm16": "3" },
 " \ "dark_yellow": { "gui": "#fcb120", "cterm": "173", "cterm16": "11" },
 " \ "blue": { "gui": "#66D9EF", "cterm": "39", "cterm16": "4" },
 " \ "purple": { "gui": "#AE81FF", "cterm": "170", "cterm16": "5" },
 " \ "cyan": { "gui": "#89DDF3", "cterm": "38", "cterm16": "6" },
 " \ "white": { "gui": "#b4b4a8", "cterm": "145", "cterm16": "7" },
 " \ "black": { "gui": "#202020", "cterm": "235", "cterm16": "0" },
 " \ "visual_black": { "gui": "NONE", "cterm": "NONE", "cterm16": "0" },
 " \ "comment_grey": { "gui": "#75715E", "cterm": "59", "cterm16": "15" },
 " \ "gutter_fg_grey": { "gui": "#75715E", "cterm": "238", "cterm16": "15" },
 " \ "cursor_grey": { "gui": "#303030", "cterm": "236", "cterm16": "8" },
 " \ "visual_grey": { "gui": "#303030", "cterm": "237", "cterm16": "15" },
 " \ "menu_grey": { "gui": "#303030", "cterm": "237", "cterm16": "8" },
 " \ "special_grey": { "gui": "#303030", "cterm": "238", "cterm16": "15" },
 " \ "vertsplit": { "gui": "#303030", "cterm": "59", "cterm16": "15" }
 " \}

"""" Base16 Ocean Light (Spacegray)
 " let g:onedark_color_overrides = {
 " \ "red": { "gui": "#bf616a", "cterm": "204", "cterm16": "1" },
 " \ "dark_red": { "gui": "#da606c", "cterm": "196", "cterm16": "9" },
 " \ "green": { "gui": "#a3be8c", "cterm": "114", "cterm16": "2" },
 " \ "yellow": { "gui": "#ebcb8b", "cterm": "180", "cterm16": "3" },
 " \ "dark_yellow": { "gui": "#d08770", "cterm": "173", "cterm16": "11" },
 " \ "blue": { "gui": "#8fa1b3", "cterm": "39", "cterm16": "4" },
 " \ "purple": { "gui": "#b48ead", "cterm": "170", "cterm16": "5" },
 " \ "cyan": { "gui": "#96b5b4", "cterm": "38", "cterm16": "6" },
 " \ "white": { "gui": "#4f5b66", "cterm": "145", "cterm16": "7" },
 " \ "black": { "gui": "#eff1f5", "cterm": "235", "cterm16": "0" },
 " \ "visual_black": { "gui": "NONE", "cterm": "NONE", "cterm16": "0" },
 " \ "comment_grey": { "gui": "#a7adba", "cterm": "59", "cterm16": "15" },
 " \ "gutter_fg_grey": { "gui": "#c0c5ce", "cterm": "238", "cterm16": "15" },
 " \ "cursor_grey": { "gui": "#e1e4ea", "cterm": "236", "cterm16": "8" },
 " \ "visual_grey": { "gui": "#dfe1e8", "cterm": "237", "cterm16": "15" },
 " \ "menu_grey": { "gui": "#e4e8ef", "cterm": "237", "cterm16": "8" },
 " \ "special_grey": { "gui": "#dfe1e8", "cterm": "238", "cterm16": "15" },
 " \ "vertsplit": { "gui": "#dfe1e8", "cterm": "59", "cterm16": "15" }
 " \}

"" Base16 Ocean Dark (Spacegray)
 " let g:onedark_color_overrides = {
 " \ "red": { "gui": "#bf616a", "cterm": "204", "cterm16": "1" },
 " \ "dark_red": { "gui": "#da606c", "cterm": "196", "cterm16": "9" },
 " \ "green": { "gui": "#a3be8c", "cterm": "114", "cterm16": "2" },
 " \ "yellow": { "gui": "#ebcb8b", "cterm": "180", "cterm16": "3" },
 " \ "dark_yellow": { "gui": "#d08770", "cterm": "173", "cterm16": "11" },
 " \ "blue": { "gui": "#8fa1b3", "cterm": "39", "cterm16": "4" },
 " \ "purple": { "gui": "#b48ead", "cterm": "170", "cterm16": "5" },
 " \ "cyan": { "gui": "#96b5b4", "cterm": "38", "cterm16": "6" },
 " \ "white": { "gui": "#c0c5ce", "cterm": "145", "cterm16": "7" },
 " \ "super_white": { "gui": "#e0f7ff", "cterm": "145", "cterm16": "7" },
 " \ "black": { "gui": "#2e333d", "cterm": "235", "cterm16": "0" },
 " \ "visual_black": { "gui": "NONE", "cterm": "NONE", "cterm16": "0" },
 " \ "comment_grey": { "gui": "#65737e", "cterm": "59", "cterm16": "15" },
 " \ "gutter_fg_grey": { "gui": "#65737e", "cterm": "238", "cterm16": "15" },
 " \ "cursor_grey": { "gui": "#343a45", "cterm": "236", "cterm16": "8" },
 " \ "visual_grey": { "gui": "#3c434f", "cterm": "237", "cterm16": "15" },
 " \ "menu_grey": { "gui": "#232830", "cterm": "237", "cterm16": "8" },
 " \ "special_grey": { "gui": "#434d5c", "cterm": "238", "cterm16": "15" },
 " \ "vertsplit": { "gui": "#434d5c", "cterm": "59", "cterm16": "15" }
 " \}

"" Base16 Ocean Dark (Spacegray) Kodak Elite Color 400
 let g:onedark_color_overrides = {
 \ "red": { "gui": "#B43156", "cterm": "204", "cterm16": "1" },
 \ "dark_red": { "gui": "#CF1C55", "cterm": "196", "cterm16": "9" },
 \ "green": { "gui": "#ADB68B", "cterm": "114", "cterm16": "2" },
 \ "yellow": { "gui": "#EEB689", "cterm": "180", "cterm16": "3" },
 \ "dark_yellow": { "gui": "#CD5E63", "cterm": "173", "cterm16": "11" },
 \ "blue": { "gui": "#7FA0A9", "cterm": "39", "cterm16": "4" },
 \ "purple": { "gui": "#A681A2", "cterm": "170", "cterm16": "5" },
 \ "cyan": { "gui": "#91B4AF", "cterm": "38", "cterm16": "6" },
 \ "white": { "gui": "#B9C3C8", "cterm": "145", "cterm16": "7" },
 \ "super_white": { "gui": "#DAF9FB", "cterm": "145", "cterm16": "7" },
 \ "black": { "gui": "#20272B", "cterm": "235", "cterm16": "0" },
 \ "visual_black": { "gui": "NONE", "cterm": "NONE", "cterm16": "0" },
 \ "comment_grey": { "gui": "#4F676D", "cterm": "59", "cterm16": "15" },
 \ "gutter_fg_grey": { "gui": "#4F676D", "cterm": "238", "cterm16": "15" },
 \ "cursor_grey": { "gui": "#262C32", "cterm": "236", "cterm16": "8" },
 \ "visual_grey": { "gui": "#2C343A", "cterm": "237", "cterm16": "15" },
 \ "menu_grey": { "gui": "#171C20", "cterm": "237", "cterm16": "8" },
 \ "special_grey": { "gui": "#2E3E46", "cterm": "238", "cterm16": "15" },
 \ "vertsplit": { "gui": "#2E3E46", "cterm": "59", "cterm16": "15" }
 \}

""" Mariana
"let g:onedark_color_overrides = {
"\ "red": { "gui": "#F07178", "cterm": "204", "cterm16": "1" },
"\ "dark_red": { "gui": "#EC5f67", "cterm": "196", "cterm16": "9" },
"\ "green": { "gui": "#99C794", "cterm": "114", "cterm16": "2" },
"\ "yellow": { "gui": "#FAC863", "cterm": "180", "cterm16": "3" },
"\ "dark_yellow": { "gui": "#F9AE58", "cterm": "173", "cterm16": "11" },
"\ "blue": { "gui": "#6699cc", "cterm": "39", "cterm16": "4" },
"\ "purple": { "gui": "#7986CB", "cterm": "170", "cterm16": "5" },
"\ "cyan": { "gui": "#89DDF3", "cterm": "38", "cterm16": "6" },
"\ "white": { "gui": "#D8DEE9", "cterm": "145", "cterm16": "7" },
"\ "black": { "gui": "#343D46", "cterm": "235", "cterm16": "0" },
"\ "visual_black": { "gui": "NONE", "cterm": "NONE", "cterm16": "0" },
"\ "comment_grey": { "gui": "#576573", "cterm": "59", "cterm16": "15" },
"\ "gutter_fg_grey": { "gui": "#576573", "cterm": "238", "cterm16": "15" },
"\ "cursor_grey": { "gui": "#2A3138", "cterm": "236", "cterm16": "8" },
"\ "visual_grey": { "gui": "#2A3138", "cterm": "237", "cterm16": "15" },
"\ "menu_grey": { "gui": "#2A3138", "cterm": "237", "cterm16": "8" },
"\ "special_grey": { "gui": "#2A3138", "cterm": "238", "cterm16": "15" },
"\ "vertsplit": { "gui": "#2A3138", "cterm": "59", "cterm16": "15" }
"\}


"let g:onedark_color_overrides = {
"\ "white": { "gui": "#8490AC", "cterm": "145", "cterm16": "7" },
"\ "black": { "gui": "#272A30", "cterm": "235", "cterm16": "0" },
"\}
hi! link Noise SpecialComment

let g:onedark_terminal_italics=1

let g:python3_host_prog = $HOME.'/.config/nvim/venv3/bin/python3'
let g:python_highlight_all = 1

" let g:vue_disable_pre_processors=1

set runtimepath+=~/.config/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.config/dein')
  call dein#begin('~/.config/dein')
  call dein#add('~/.config/dein/repos/github.com/Shougo/dein.vim')

  call dein#add('joshdick/onedark.vim')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('zchee/deoplete-jedi')
  call dein#add('itchyny/lightline.vim')
  call dein#add('tpope/vim-fugitive')
  call dein#add('majutsushi/tagbar')
  call dein#add('davidhalter/jedi-vim')
  call dein#add('sjl/gundo.vim')
  call dein#add('scrooloose/nerdtree')
  call dein#add('Xuyuanp/nerdtree-git-plugin')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('ap/vim-css-color')
  call dein#add('Shougo/context_filetype.vim')
  call dein#add('nathanaelkane/vim-indent-guides')
  call dein#add('digitaltoad/vim-pug')
  call dein#add('hail2u/vim-css3-syntax')
  call dein#add('cakebaker/scss-syntax.vim')
  call dein#add('junegunn/goyo.vim')
  call dein#add('pangloss/vim-javascript')
  call dein#add('tpope/vim-surround')
  call dein#add('terryma/vim-multiple-cursors')
  " call dein#add('romgrk/python-syntax', {'rev': 'syntax-improvements'})
  call dein#add('zezic/python-syntax')
  call dein#add('vim-scripts/auto-pairs-gentle')
  call dein#add('Vimjas/vim-python-pep8-indent')
  call dein#add('scrooloose/nerdcommenter')
  call dein#add('zezic/vim-vue')
  call dein#add('Yggdroot/indentLine')
  call dein#add('elzr/vim-json')
  call dein#add('ervandew/supertab')
  call dein#add('w0rp/ale')
  call dein#add('maximbaz/lightline-ale')
  call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
  call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })
  call dein#add('qpkorr/vim-bufkill')
  call dein#add('SirVer/ultisnips')
  call dein#add('bronson/vim-trailing-whitespace')
  call dein#add('carlitux/deoplete-ternjs')

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
function! s:goyo_enter()
  ALEDisable
  silent! call lightline#disable()
endfunction

function! s:goyo_leave()
  ALEEnable
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
let g:vim_json_syntax_conceal = 0

let g:ale_python_pylint_executable = 'pylint'
let g:ale_python_pylint_options = '--init-hook=''import sys; sys.path.append(".")'''
let g:ale_python_pylint_use_global = 0
let g:ale_python_pylint_change_directory = 0


let g:indent_guides_enable_on_vim_startup = 0 " Indent guides
let g:deoplete#enable_at_startup = 1 " Autocompletion
let g:deoplete#sources#ternjs#filetypes = [
                \ 'vue'
                \ ]
let g:jedi#completions_enabled = 0 " Disable vim-jedi completion
let NERDTreeIgnore=['\.pyc$', '\~$', '__pycache__']
let NERDTreeQuitOnOpen=1
autocmd BufWinEnter '__doc__' setlocal bufhidden=delete " Don't show Jedi docs
autocmd FileType vue syntax sync fromstart " Fix Vue highlighting

" Behaviour
set clipboard+=unnamedplus
set expandtab
set tabstop=2
set shiftwidth=2
set ignorecase
set smartcase
set scrolloff=2

" Hotkeys
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
nmap <C-t> :TagbarToggle<CR>
nnoremap <F5> :GundoToggle<CR>
map <C-\> :NERDTreeToggle<CR>
map <C-_> :call NERDComment(1, 'toggle')<CR>
" map <C-_> gcc
map <C-f> :noh<CR>

map <F3> :tabp<CR>
map <F4> :tabn<CR>
map <A-1> :tabn 1<CR>
map <A-2> :tabn 2<CR>
map <A-3> :tabn 3<CR>
map <A-4> :tabn 4<CR>
map <A-5> :tabn 5<CR>
map <A-6> :tabn 6<CR>
map <A-7> :tabn 7<CR>
map <A-8> :tabn 8<CR>
map <A-9> :tabn 9<CR>
map <A-0> :tabn 10<CR>

nmap <C-p> :Files<CR>
nmap <Leader>t :BTags<CR>
nmap ; :Buffers<CR>
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

let g:UltiSnipsExpandTrigger="<tab>"

" nmap <C-w> :BD<CR>
" nmap <C-W> :bd<CR>

" UI
set mouse=a
set nu
set relativenumber

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

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

let s:colors = onedark#GetColors()

" Invert lightline colors
if get(g:, 'onedark_termcolors', 256) == 16
  let s:term_red = s:colors.red.cterm16
  let s:term_green = s:colors.green.cterm16
  let s:term_yellow = s:colors.yellow.cterm16
  let s:term_blue = s:colors.blue.cterm16
  let s:term_purple = s:colors.purple.cterm16
  let s:term_cyan = s:colors.cyan.cterm16
  let s:term_white = s:colors.white.cterm16
  let s:term_black = s:colors.black.cterm16
  let s:term_grey = s:colors.cursor_grey.cterm16
  let s:term_comment = s:colors.comment_grey.cterm16
else
  let s:term_red = s:colors.red.cterm
  let s:term_green = s:colors.green.cterm
  let s:term_yellow = s:colors.yellow.cterm
  let s:term_blue = s:colors.blue.cterm
  let s:term_purple = s:colors.purple.cterm
  let s:term_cyan = s:colors.cyan.cterm
  let s:term_white = s:colors.white.cterm
  let s:term_black = s:colors.black.cterm
  let s:term_grey = s:colors.cursor_grey.cterm
  let s:term_comment = s:colors.comment_grey.cterm
endif

let s:red = [ s:colors.red.gui, s:term_red ]
let s:green = [ s:colors.green.gui, s:term_green ]
let s:yellow = [ s:colors.yellow.gui, s:term_yellow ]
let s:blue = [ s:colors.blue.gui, s:term_blue ]
let s:cyan = [ s:colors.cyan.gui, s:term_cyan ]
let s:purple = [ s:colors.purple.gui, s:term_purple ]
let s:white = [ s:colors.white.gui, s:term_white ]
let s:black = [ s:colors.black.gui, s:term_black ]
let s:grey = [ s:colors.visual_grey.gui, s:term_grey ]
let s:comment = [ s:colors.comment_grey.gui, s:term_comment ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:comment, s:black ], [ s:comment, s:black ] ]
let s:p.normal.right = [ [ s:comment, s:black ], [ s:comment, s:black ] ]
let s:p.inactive.left =  [ [ s:grey, s:black ], [ s:grey, s:black ] ]
let s:p.inactive.right = [ [ s:grey, s:black ], [ s:grey, s:black ] ]
let s:p.insert.left = [ [ s:cyan, s:black ], [ s:cyan, s:black ] ]
let s:p.insert.right = [ [ s:cyan, s:black ], [ s:cyan, s:black ] ]
let s:p.replace.left = [ [ s:red, s:black ], [ s:red, s:black ] ]
let s:p.replace.right = [ [ s:red, s:black ], [ s:red, s:black ] ]
let s:p.visual.left = [ [ s:purple, s:black ], [ s:purple, s:black ] ]
let s:p.visual.right = [ [ s:purple, s:black ], [ s:purple, s:black ] ]
let s:p.normal.middle = [ [ s:comment, s:black ] ]
let s:p.insert.middle = [ [ s:cyan, s:black ] ]
let s:p.replace.middle = [ [ s:red, s:black ] ]
let s:p.visual.middle = [ [ s:purple, s:black ] ]
let s:p.inactive.middle = [ [ s:white, s:black ] ]
let s:p.tabline.left = [ [ s:comment, s:black ] ]
let s:p.tabline.tabsel = [ [ s:white, s:grey ] ]
let s:p.tabline.middle = [ [ s:comment, s:black ] ]
let s:p.tabline.right = [ [ s:comment, s:black ] ]
let s:p.normal.error = [ [ s:red, s:black ] ]
let s:p.normal.warning = [ [ s:yellow, s:black ] ]

let g:lightline#colorscheme#onedark#palette = lightline#colorscheme#flatten(s:p)

let g:lightline = {
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'fugitive', 'filename', 'modified' ] ],
  \   'right': [ [ 'linter_checking', 'linter_errors',
  \                'linter_warnings', 'lineinfo' ],
  \              [ 'filetype' ] ]
  \ },
  \ 'tab': {
  \   'active': [ 'filename', 'modified' ],
  \   'inactive': [ 'filename', 'modified' ]
  \ },
  \ 'tab_component_function': {
  \   'filename': 'LightlineTabFilename'
  \ },
  \ 'component_function': {
  \   'fugitive': 'LightlineFugitive',
  \   'filename': 'LightlineFilename',
  \   'mode': 'LightlineMode',
  \   'fileformat': 'LightlineFileformat',
  \   'filetype': 'LightlineFiletype',
  \   'fileencoding': 'LightlineFileencoding'
  \ },
  \ 'component_expand': {
  \   'linter_checking': 'lightline#ale#checking',
  \   'linter_warnings': 'lightline#ale#warnings',
  \   'linter_errors': 'lightline#ale#errors',
  \   'linter_ok': 'lightline#ale#ok'
  \ },
  \ 'component_visible_condition': {
  \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
  \ },
  \ 'component_type': {
  \   'linter_checking': 'left',
  \   'linter_warnings': 'warning',
  \   'linter_errors': 'error',
  \   'linter_ok': 'left'
  \ },
  \ 'colorscheme': 'onedark',
  \ 'separator': { 'left': '', 'right': '' },
  \ 'subseparator': { 'left': ' ❯ ', 'right': ' ❮ ' },
  \ 'tabline_separator': { 'left': '', 'right': '' },
  \ 'tabline_subseparator': { 'left': '', 'right': '' }
  \ }

  " \ 'subseparator': { 'left': '', 'right': '' }

let s:m = { '__Tagbar__': 'Tagbar', '__Gundo__': 'Gundo', '__Gundo_Preview__': 'Gundo Preview', '[Command Line]': 'Command Line'}
let s:p = {}

function! LightlineTabFilename(n) abort
  let bufnr = tabpagebuflist(a:n)[tabpagewinnr(a:n) - 1]
  let bufname = expand('#' . bufnr . ':t')
  let buffullname = expand('#' . bufnr . ':p')
  let bufnrs = filter(range(1, bufnr('$')), 'v:val != bufnr && len(bufname(v:val)) && bufexists(v:val) && buflisted(v:val)')
  let i = index(map(copy(bufnrs), 'expand("#" . v:val . ":t")'), bufname)
  let ft = gettabwinvar(a:n, tabpagewinnr(a:n), '&ft')
  if strlen(bufname) && i >= 0 && map(bufnrs, 'expand("#" . v:val . ":p")')[i] != buffullname
    let fname = substitute(buffullname, '.*/\([^/]\+/\)', '\1', '')
  else
    let fname = bufname
  endif
  return fname =~# '^\[preview' ? 'Preview' : get(s:m, fname, get(s:p, ft, fname))
endfunction

function! LightlineModified()
  return &ft =~ 'help' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightlineReadonly()
  return &ft !~? 'help' && &readonly ? 'RO' : ''
endfunction

function! LightlineFugitive()
  try
    if expand('%:t') !~? 'Tagbar\|Gundo\|NERD' && &ft !~? 'vimfiler' && exists('*fugitive#head')
      let mark = ' '  " edit here for cool mark
      let branch = fugitive#head()
      return branch !=# '' ? mark.branch : ''
    endif
  catch
  endtry
  return ''
endfunction

function! LightlineFilename()
  let fname = expand('%')
  return fname == '__Tagbar__' ? g:lightline.fname :
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
        \ fname == '__Gundo__' ? 'Gundo' :
        \ fname == '__Gundo_Preview__' ? 'Gundo Preview' :
        \ fname =~ 'NERD_tree' ? 'NERDTree' :
        \ &ft == 'unite' ? 'Unite' :
        \ &ft == 'vimfiler' ? 'VimFiler' :
        \ &ft == 'vimshell' ? 'VimShell' :
        \ winwidth(0) > 60 ? lightline#mode() : ''
endfunction

let g:tagbar_status_func = 'TagbarStatusFunc'

function! TagbarStatusFunc(current, sort, fname, ...) abort
    let g:lightline.fname = a:fname
  return lightline#statusline(0)
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
  " autocmd ColorScheme * call onedark#set_highlight("FCallKeyword", { "fg": s:cyan })
  " autocmd ColorScheme * call onedark#set_highlight("FName", { "fg": s:blue })
end

" Spacegray Light emulation
if (has("autocmd"))
  augroup colorset
    autocmd!
    " Python
    autocmd ColorScheme * call onedark#set_highlight("pythonKeywordArgument", { "fg": g:onedark_color_overrides.red })
    autocmd ColorScheme * call onedark#set_highlight("pythonImport", { "fg": g:onedark_color_overrides.purple })
    autocmd ColorScheme * call onedark#set_highlight("pythonNumber", { "fg": g:onedark_color_overrides.dark_yellow })
    autocmd ColorScheme * call onedark#set_highlight("pythonClassName", { "fg": g:onedark_color_overrides.dark_yellow })
    autocmd ColorScheme * call onedark#set_highlight("pythonStrFormat", { "fg": g:onedark_color_overrides.dark_yellow })
    autocmd ColorScheme * call onedark#set_highlight("pythonConstant", { "fg": g:onedark_color_overrides.red })

    " JavaScript
    autocmd ColorScheme * call onedark#set_highlight("jsDestructuringBlock", { "fg": g:onedark_color_overrides.red })
    autocmd ColorScheme * call onedark#set_highlight("jsModuleKeyword", { "fg": g:onedark_color_overrides.red })
    autocmd ColorScheme * call onedark#set_highlight("jsVariableDef", { "fg": g:onedark_color_overrides.red })
    autocmd ColorScheme * call onedark#set_highlight("jsObject", { "fg": g:onedark_color_overrides.red })
    autocmd ColorScheme * call onedark#set_highlight("jsFuncBlock", { "fg": g:onedark_color_overrides.red })
    autocmd ColorScheme * call onedark#set_highlight("jsForAwait", { "fg": g:onedark_color_overrides.purple })

    " Pug
    autocmd ColorScheme * call onedark#set_highlight("pugClass", { "fg": g:onedark_color_overrides.dark_yellow })
    autocmd ColorScheme * call onedark#set_highlight("pugId", { "fg": g:onedark_color_overrides.blue })

    " Sass
    autocmd ColorScheme * call onedark#set_highlight("sassAmpersand", { "fg": g:onedark_color_overrides.purple })
    autocmd ColorScheme * call onedark#set_highlight("sassVariable", { "fg": g:onedark_color_overrides.red })
  augroup END
endif

" Spacegray Dark emulation
if (has("autocmd"))
  augroup colorset2
    autocmd!
    " Python
    autocmd ColorScheme * call onedark#set_highlight("pythonClassName", { "fg": g:onedark_color_overrides.yellow })
  augroup END
endif

" Search Highlight
if (has("autocmd"))
  augroup colorset3
    autocmd!
    autocmd ColorScheme * call onedark#set_highlight("Search", { "fg": g:onedark_color_overrides.super_white, "bg": g:onedark_color_overrides.special_grey })
    autocmd ColorScheme * call onedark#set_highlight("IncSearch", { "fg": g:onedark_color_overrides.dark_red, "bg": g:onedark_color_overrides.menu_grey })
  augroup END
endif

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Look
set termguicolors
colorscheme onedark
" set laststatus=0

" Indent guides
let g:indentLine_color_gui = g:onedark_color_overrides.vertsplit.gui
let g:indentLine_char = '│'
let g:indentLine_first_char = '│'
let g:indentLine_showFirstIndentLevel = 1

" VertLines
set fillchars=vert:\▏


let g:ft = ''
function! NERDCommenter_before()
  if &ft == 'vue'
    let g:ft = 'vue'
    let stack = synstack(line('.'), col('.'))
    if len(stack) > 0
      let syn = synIDattr((stack)[0], 'name')
      if len(syn) > 0
        exe 'setf ' . substitute(tolower(syn), '^vue_', '', '')
      endif
    endif
  endif
endfunction
function! NERDCommenter_after()
  if g:ft == 'vue'
    setf vue
    let g:ft = ''
  endif
endfunction

let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 0
