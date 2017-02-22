let g:python3_host_prog = '/home/zezic/.config/nvim/venv3/bin/python3'

set runtimepath+=/home/zezic/.config/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('/home/zezic/.config/dein')
  call dein#begin('/home/zezic/.config/dein')
  call dein#add('/home/zezic/.config/dein/repos/github.com/Shougo/dein.vim')

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
  call dein#add('vim-syntastic/syntastic')
  call dein#add('Xuyuanp/nerdtree-git-plugin')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('ap/vim-css-color')
  call dein#add('scrooloose/nerdcommenter')
  call dein#add('nathanaelkane/vim-indent-guides')
  call dein#add('digitaltoad/vim-pug')

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
  \ 'separator': { 'left': '⮀', 'right': '⮂' },
  \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
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
