" Requirements:
" dein: https://github.com/Shougo/dein.vim
" universal-ctags: https://github.com/universal-ctags/ctags
" ccls: https://github.com/MaskRay/ccls
" :CocInstall coc-css coc-vetur coc-ultisnips

" Hotkeys:
" Ctrl+] - Go to definition
" Ctrl+O - Go back
" Ctrl+T - TagBar
" Ctrl+\ - NERDTree


if &compatible
  set nocompatible
endif

hi! link Noise SpecialComment

let g:onedark_terminal_italics=1
let g:python_highlight_all = 1

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Base Plugins
  call dein#add('zezic/onedark.vim', { 'merged': 0 })
  call dein#add('zezic/vim-operator-highlight', { 'merged': 0 })
  call dein#add('Shougo/context_filetype.vim')
  call dein#add('ludovicchabant/vim-gutentags')
  call dein#add('Shougo/unite.vim')

  call dein#add('Shougo/neoinclude.vim')
  call dein#add('jsfaint/coc-neoinclude')
  call dein#add('neoclide/coc.nvim', { 'build': 'yarn install', 'rev': 'v0.0.55' })
  call dein#add('scrooloose/nerdcommenter')
  call dein#add('liuchengxu/vista.vim') " Like tagbar, but for CoC

  " UI
  " call dein#add('Shougo/vimfiler.vim')
  call dein#add('zezic/vimfiler.vim', { 'merged': 0 })
  " call dein#add('majutsushi/tagbar')
  call dein#add('zezic/tagbar', { 'merged': 0 })
  call dein#add('Yggdroot/indentLine')
  call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
  call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })
  call dein#add('zezic/vim-trailing-whitespace', { 'merged': 0 })

  " Operations
  call dein#add('tpope/vim-surround')
  call dein#add('vim-scripts/auto-pairs-gentle')
  call dein#add('terryma/vim-multiple-cursors')

  " Lightline
  call dein#add('itchyny/lightline.vim')
  call dein#add('tpope/vim-fugitive')

  " Git
  call dein#add('airblade/vim-gitgutter')
  " call dein#add('Xuyuanp/nerdtree-git-plugin')

  " C++
  call dein#add('bfrg/vim-cpp-modern', { 'merged': 0 })

  " CSS
  call dein#add('ap/vim-css-color')
  call dein#add('cakebaker/scss-syntax.vim')

  " JS
  call dein#add('pangloss/vim-javascript')
  call dein#add('othree/yajs.vim')

  " JSON
  call dein#add('elzr/vim-json')

  " Python
  call dein#add('zchee/deoplete-jedi')
  call dein#add('davidhalter/jedi-vim')
  call dein#add('zezic/python-syntax')

  " Pug
  call dein#add('zezic/vim-pug', { 'merged': 0, 'rev': 'before-broken-dashes' })

  " Vue
  call dein#add('zezic/vim-vue', { 'merged': 0 })
  call dein#add('SirVer/ultisnips')

  call dein#end()
  call dein#save_state()
endif
let g:cpp_named_requirements_highlight = 1

set hidden

filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

" Look & Feel
set termguicolors
colorscheme onedark
set nu
set relativenumber

" Indent guides
let g:indentLine_color_gui = onedark#GetColors().cursor_grey.gui
let g:indentLine_char = '│'
let g:indentLine_first_char = '│'
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_fileTypeExclude = ['tagbar', 'vimfiler']

" Behaviour
set mouse=a
set clipboard+=unnamedplus
set expandtab
set tabstop=2
set shiftwidth=2
set ignorecase
set smartcase
set scrolloff=2

" Hotkeys
nmap <C-t> :TagbarToggle<CR><C-W>l
nmap <A-o> :Vista!!<CR>
nnoremap <F5> :GundoToggle<CR>
" map <C-\> :NERDTreeToggle<CR>
map <C-_> :call NERDComment(1, 'toggle')<CR>
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
" Use `[c` and `]c` for navigate diagnostics
nmap <silent> <C-[> <Plug>(coc-diagnostic-prev)
nmap <silent> <C-]> <Plug>(coc-diagnostic-next)
" Remap keys for gotos
nmap <silent> <Leader>g <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <Leader>p :CocList outline<CR>
map <silent> <C-\> :VimFilerExplorer<CR>

" CoC
set completeopt-=preview " Disable docs window

" Jedi
let g:jedi#completions_enabled = 0 " Disable vim-jedi completion
autocmd BufWinEnter '__doc__' setlocal bufhidden=delete " Don't show Jedi docs

" Gutentags
let g:gutentags_ctags_exclude = ["*.min.js", "*.min.css", "build", "vendor", ".git", "node_modules", ".nuxt", "*.vim/bundle/*"]

" Lightline
source ~/.config/nvim/init-lightline.vim

" NERDTree
" source ~/.config/nvim/init-nerdtree.vim

" NERDCommenter
let NERDSpaceDelims = 1

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

" Gitgutter
let g:gitgutter_sign_added = '▎'
let g:gitgutter_sign_modified = '▎'
let g:gitgutter_sign_removed = ''
let g:gitgutter_sign_removed_first_line = ''
let g:gitgutter_sign_modified_removed = '▎'

" Multicursors
let g:multi_cursor_exit_from_visual_mode = 0
let g:multi_cursor_exit_from_insert_mode = 0
let g:multi_cursor_use_default_mapping = 0
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-s>'
let g:multi_cursor_quit_key            = '<Esc>'

" Tagbar
let g:tagbar_type_scss = {
\ 'ctagstype' : 'scss',
    \ 'kinds'     : [
        \ 'c:Class',
        \ 's:Selector',
        \ 'm:Mixin',
        \ 'd:Media',
        \ 'v:Variable',
        \ 'i:Identity'
    \ ]
\ }

" Whitespace
let g:extra_whitespace_ignored_filetypes = ['vimfiler']

" Vista
let g:vista_sidebar_width = 35
let g:vista_default_executive = 'coc'

" C++
let g:ale_c_parse_compile_commands = 1

" JSON
let g:vim_json_syntax_conceal = 0
autocmd FileType json syntax match Comment +\/\/.\+$+

" Python
let g:ale_python_pylint_executable = 'pylint'
let g:ale_python_pylint_options = '--init-hook=''import sys; sys.path.append(".")'''
let g:ale_python_pylint_use_global = 0
let g:ale_python_pylint_change_directory = 0

" SASS
" autocmd FileType scss set iskeyword+=-

" Vue
autocmd FileType vue syntax sync fromstart " Fix Vue highlighting

" Tagbar
autocmd FileType tagbar set fcs=eob:\ 
let g:tagbar_iconchars = ['◆', '◇']
let g:tagbar_visibility_symbols = {
    \ 'public'    : '•',
    \ 'protected' : '-',
    \ 'private'   : '×'
\ }

" Vimfiler
autocmd FileType vimfiler setlocal nonumber
autocmd FileType vimfiler setlocal nornu
autocmd FileType vimfiler set fcs=eob:\ 
let g:vimfiler_tree_leaf_icon = ''
let g:vimfiler_file_icon = '•'
let g:vimfiler_tree_closed_icon = '◆'
let g:vimfiler_tree_opened_icon = '◇'
let g:vimfiler_readonly_file_icon = '×'
