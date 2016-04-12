set t_Co=256
set nu
syntax enable
set background=dark
let base16colorspace=256
set laststatus=2

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" BUNDLES
Plugin 'VundleVim/Vundle.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'hdima/python-syntax'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'digitaltoad/vim-pug'
"Plugin 'fholgado/minibufexpl.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'sjl/gundo.vim'
Plugin 'tpope/vim-haml'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Bundle 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on

let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮁'

set encoding=utf8
set fillchars=vert:│ 

map <C-n> :NERDTreeToggle<CR>
map <C-\> :NERDTreeFocus<CR>
map <C-_> :call NERDComment(1, 'toggle')<CR>

"let g:NERDTreeDirArrowExpandable="+"
"let g:NERDTreeDirArrowCollapsible="~"

let python_highlight_all = 1 

"map <F1> :MBEbp<CR> " Prev buffer
"map <F2> :MBEbn<CR> " Next buffer
"map <F4> :MBEbd<CR> " Destroy buffer
map <F1> gT
map <F2> gt
map <Esc>[1;2P <S-F1>
map <Esc>[1;2Q <S-F2>
map <S-F1> :tabm -1<CR>
map <S-F2> :tabm +1<CR>

nnoremap <F5> :GundoToggle<CR>
:let g:session_autosave = 'yes'
:let g:session_autoload = 'no'
:set list
":set listchars=eol:⮐,tab:⟶\ ,trail:⬝,space:⬝
:set listchars=eol:⮐,tab:⟶\ ,trail:⬝

let g:indentLine_color_term = 8
let g:indentLine_char = 'ᛁ'
filetype plugin indent on

nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv
colorscheme base16-ocean
let g:airline_theme="base16"
":set fillchars+=vert:\ 
:hi VertSplit ctermbg=18
":hi StatusLine ctermbg=4 ctermfg=4
"
:set ttimeoutlen=0
set modelines=0
set scrolloff=3
set wildmenu
set cursorline

set ignorecase
set smartcase

set incsearch
set showmatch
set hlsearch

nnoremap <C-f> :noh<cr>

set ttyfast
set mouse=a
set ttymouse=xterm2

set relativenumber
