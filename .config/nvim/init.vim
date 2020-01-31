" Requirements:
" dein: https://github.com/Shougo/dein.vim
" universal-ctags: https://github.com/universal-ctags/ctags
" ccls: https://github.com/MaskRay/ccls
" :CocInstall coc-css coc-pairs coc-python coc-vetur coc-ultisnips

" Hotkeys:
" Ctrl+] - Go to definition
" Ctrl+O - Go back
" Ctrl+T - TagBar
" Ctrl+\ - NERDTree


if &compatible
  set nocompatible
endif

hi! link Noise SpecialComment

let g:onedark_terminal_italics = 1
let g:python_highlight_all = 1

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('wsdjeg/dein-ui.vim')

  " Base Plugins
  call dein#add('zezic/onedark.vim', { 'merged': 0 })
  " call dein#add('arcticicestudio/nord-vim', { 'merged': 0 })
  call dein#add('zezic/vim-operator-highlight', { 'merged': 0 })
  call dein#add('Shougo/context_filetype.vim')
  call dein#add('ludovicchabant/vim-gutentags')
  call dein#add('Shougo/unite.vim')

  call dein#add('Shougo/neoinclude.vim')
  call dein#add('jsfaint/coc-neoinclude')
  call dein#add('neoclide/coc.nvim', { 'merged': 0, 'build': './install.sh nightly' })
  call dein#add('scrooloose/nerdcommenter')
  call dein#add('liuchengxu/vista.vim') " Like tagbar, but for CoC

  call dein#add('tpope/vim-obsession')

  " UI
  call dein#add('zezic/vimfiler.vim', { 'merged': 0 })
  call dein#add('zezic/tagbar', { 'merged': 0 })
  call dein#add('Yggdroot/indentLine')
  call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
  call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })
  call dein#add('zezic/vim-trailing-whitespace', { 'merged': 0 })

  " Operations
  call dein#add('tpope/vim-surround')
  call dein#add('terryma/vim-multiple-cursors')

  " Crystalline
  " call dein#add('rbong/vim-crystalline')

  " Lightline
  " call dein#add('itchyny/lightline.vim')
  call dein#add('tpope/vim-fugitive')

  " Git
  call dein#add('airblade/vim-gitgutter')

  " C++
  " call dein#add('arakashic/chromatica.nvim', { 'merged': 0 })
  call dein#add('octol/vim-cpp-enhanced-highlight')

  " CSS
  call dein#add('ap/vim-css-color')
  call dein#add('cakebaker/scss-syntax.vim')

  " Docker
  call dein#add('ekalinin/Dockerfile.vim')

  " Haskell
  call dein#add('neovimhaskell/haskell-vim')

  " Jinja2
  call dein#add('Glench/Vim-Jinja2-Syntax')

  " JS
  call dein#add('pangloss/vim-javascript')
  call dein#add('othree/yajs.vim')

  " JSON
  call dein#add('elzr/vim-json')

  " QML
  call dein#add('peterhoeg/vim-qml')

  " Python

  " Using coc-python instead of deoplete
  " call dein#add('zchee/deoplete-jedi')
  " call dein#add('davidhalter/jedi-vim')
  call dein#add('zezic/python-syntax', { 'merged': 0 })
  " call dein#add('vim-python/python-syntax')
  " call dein#add('Guzzii/python-syntax')
  " call dein#add('zezic/python-syntax-1', { 'merged': 0 })

  " Pug
  " call dein#add('zezic/vim-pug', { 'merged': 0, 'rev': 'highlight-vue-js' })
  call dein#add('digitaltoad/vim-pug')

  " Vala
  call dein#add('arrufat/vala.vim')

  " Vue
  call dein#add('zezic/vim-vue', { 'merged': 0 })
  " call dein#add('storyn26383/vim-vue', { 'merged': 0 })
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
set laststatus=0
set termguicolors

" if (has("autocmd") && !has("gui_running"))
"   augroup colorset
"     autocmd!
"     let s:white = { "gui": "#FCFCFA", "cterm": "145", "cterm16" : "7" }
"     autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg` setting
"   augroup END
" endif

colorscheme onedark
" colorscheme nord
set nu
set relativenumber
set noshowmode

" Indent guides
let g:indentLine_color_gui = onedark#GetColors().special_grey.gui
let g:indentLine_char = '│'
let g:indentLine_first_char = '│'
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_fileTypeExclude = ['markdown', 'tagbar', 'vimfiler']

" Behaviour
set mouse=a
set clipboard+=unnamedplus
set expandtab
set tabstop=2
set shiftwidth=2
set ignorecase
set smartcase
set scrolloff=2
set noswapfile " write to file directly to support permanent inodes (to make docker mounts work correctly)
set backupcopy=yes " same

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
" nmap <silent> <C-[> <Plug>(coc-diagnostic-prev)
nmap <silent> <C-]> <Plug>(coc-diagnostic-next)
" Remap keys for gotos
nmap <silent> <Leader>g <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> <Leader>r <Plug>(coc-rename)
nmap <Leader>p :CocList outline<CR>
map <silent> <C-\> :VimFilerExplorer<CR>

" CoC
set completeopt-=preview " Disable docs window
autocmd CursorHold * silent call CocActionAsync('highlight')

" FZF
function! CreateCenteredFloatingWindow()
    let width = min([&columns - 4, max([80, &columns - 20])])
    let height = min([&lines - 4, 20])
    let top = 2
    let left = (&columns - width) / 2
    let opts = {'relative': 'editor', 'row': top, 'col': left, 'width': width, 'height': height, 'style': 'minimal'}

    let top = "╭" . repeat("─", width - 2) . "╮"
    let mid = "│" . repeat(" ", width - 2) . "│"
    let bot = "╰" . repeat("─", width - 2) . "╯"

    let lines = [top] + repeat([mid], height - 2) + [bot]
    let s:buf = nvim_create_buf(v:false, v:true)
    call nvim_buf_set_lines(s:buf, 0, -1, v:true, lines)
    call nvim_open_win(s:buf, v:true, opts)
    set winhl=Normal:Floating
    set filetype=floating
    let opts.row += 2
    let opts.height -= 4
    let opts.col += 3
    let opts.width -= 6
    call nvim_open_win(nvim_create_buf(v:false, v:true), v:true, opts)
    au BufWipeout <buffer> exe 'bw '.s:buf
endfunction

let g:fzf_layout = { 'window': 'call CreateCenteredFloatingWindow()' }

" Jedi
let g:jedi#completions_enabled = 0 " Disable vim-jedi completion
autocmd BufWinEnter '__doc__' setlocal bufhidden=delete " Don't show Jedi docs

" Gutentags
let g:gutentags_ctags_exclude = ["*.min.js", "*.min.css", "build", "vendor", ".git", "node_modules", ".nuxt", "*.vim/bundle/*"]

" NERDCommenter
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'Normal', 'CursorColumn'],
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
let g:gitgutter_sign_removed = '_'
let g:gitgutter_sign_removed_first_line = '^'
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
let g:extra_whitespace_ignored_filetypes = ['vimfiler', 'floating']

" Vista
let g:vista_sidebar_width = 35
let g:vista_default_executive = 'coc'

" C++
" let g:ale_c_parse_compile_commands = 1
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1
" let g:chromatica#libclang_path = '/usr/lib/llvm-7/lib'
" let g:chromatica#enable_at_startup = 1

" Haskell
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords

" JSON
let g:vim_json_syntax_conceal = 0
autocmd FileType json syntax match Comment +\/\/.\+$+

" Markdown
au FileType markdown setl conceallevel=0

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
let g:tagbar_iconchars = ['-', '+']
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
let g:vimfiler_tree_closed_icon = '+'
let g:vimfiler_tree_opened_icon = '-'
let g:vimfiler_readonly_file_icon = '×'

if $TERM == "screen"
  set guicursor=
endif
