"______           _              _                   _     
"|  _  \         | |            | |                 | |    
"| | | |_ __ __ _| | _____ _ __ | |     ___  _ __ __| |___ 
"| | | | '__/ _` | |/ / _ \ '_ \| |    / _ \| '__/ _` / __|
"| |/ /| | | (_| |   <  __/ | | | |___| (_) | | | (_| \__ \
"|___/ |_|  \__,_|_|\_\___|_| |_\_____/\___/|_|  \__,_|___/  
"---------- syntax and sets ----------
syntax on
set number
set mouse=a
set clipboard=unnamed
set showcmd
set ruler
set encoding=UTF-8
set showmatch
set guifont=Cascadia_Code
set sw=4
"set relativenumber
let mapleader = " "
set shiftwidth=4
set tabstop=4
set expandtab
set laststatus=2
set backspace=2
set guioptions-=T
set guioptions-=L
imap jk <Esc>
"set cursorline
set spell
set spelllang=es,en
let g:gruvbox_italic=1
hi CursorLine term=italic cterm=bold guibg=Grey40
"---------- syntax and sets ----------
"---------- Mapping ----------
nmap <leader>nf :Goyo! <CR>
nmap <silent>fs :Goyo <CR>
nmap <leader>fq :q! <CR>
nmap <leader>fw :w! <CR>
nmap <leader>es :wq <CR>
nmap <leader>so :source $HOME\_vimrc<CR>
nmap <leader>w :w <CR>
nmap <leader>q :q <CR>
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>s <Plug>(easymotion-s2)

"---------- Mapping ----------
"---------- Fonts ----------
if has("gui_running")

  if has("gui_gtk2")
  set guifont=Cascadia_Code\ 15
    elseif has("gui_macvim")
    set guifont=Cascadia_Code\Regular:h15
  elseif has("gui_win32")
  set guifont=Cascadia_Code:h15:cANSI:qDRAFT
  endif
endif
"---------- Fonts ----------
"---------- Plugins ----------
call plug#begin('~/.vim/plugged')
"goyoVim
Plug 'junegunn/goyo.vim'
Plug 'amix/vim-zenroom2'
"Temas
Plug 'morhetz/gruvbox'
Plug 'tomasiser/vim-code-dark'
"IDE
Plug 'easymotion/vim-easymotion'
"Nerdtree
Plug 'preservim/nerdtree'
"tmux
Plug 'christoomey/vim-tmux-navigator'
"lightline
Plug 'itchyny/lightline.vim'
"Indentline
Plug 'yggdroot/indentline'
Plug 'michaeljsmith/vim-indent-object'
"delimitmate
Plug 'raimondi/delimitmate'
"devIcons
Plug 'ryanoasis/vim-devicons'
"cssColor
Plug 'ap/vim-css-color'
"TagCloserHTML
Plug 'alvan/vim-closetag'
"emmet
Plug 'mattn/emmet-vim'
"neoclide complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Multiple cursor
Plug 'terryma/vim-multiple-cursors'
"FzF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }
call plug#end()
"---------- Plugins ----------
"---------- some configs ----------
"indentline
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_enabled = 1

"ligthline config
set laststatus=2
"gruvbox
colorscheme gruvbox
let g:gruvbox_contrast_dark="hard"
set bg:dark
"Multicursor
let g:multi_cursor_use_default_mapping=1
function! Multiple_cursors_before()
  if exists(':NeoCompleteLock')==2
    exe 'NeoCompleteLock'
  endif
endfunction

function! Multiple_cursors_after()
  if exists(':NeoCompleteUnlock')==2
    exe 'NeoCompleteUnlock'
  endif
endfunction
"Nerdtree
autocmd VimEnter * NERDTree
autocmd VimEnter * NERDTree | wincmd p
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>gd :NERDTree D:\<CR>
nnoremap <leader>gc :NERDTree C:\<CR>
nnoremap <leader>pg :"*p<CR>
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
let NERDTreeShowHidden=1
"Emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
"escribe html:5 y luego presionar Ctrl+y,
"goyoVim
let g:goyo_width=100
let g:goyo_height=100
let g:goyo_linenr=100
"---------- some configs ----------

"----------
"config Close tag                                                              
"----------
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

"----------
"config Close tag                                                              
"----------


"----------------------------------------------------------
"config devicons
"----------------------------------------------------------
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_vimfiler = 1
let g:webdevicons_enable_ctrlp = 1
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ 'component_function': {
      \   'filetype': 'MyFiletype',
      \   'fileformat': 'MyFileformat',
      \ }
      \ }

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction
"----------------------------------------------------------
"config devicons
"----------------------------------------------------------
"----------------------------------------------------------
"fzf Config
"---------------------------------------------------------
let g:fzf_layout = { 'window': 'call FloatingFZF()' }
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.5, 'highlight': 'Comment' } }
"This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" An action can be a reference to a function that processes selected lines
function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

let g:fzf_action = {
  \ 'ctrl-q': function('s:build_quickfix_list'),
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - Popup window (center of the screen)
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }

" - Popup window (center of the current window)
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6, 'relative': v:true } }

" - Popup window (anchored to the bottom of the current window)
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6, 'relative': v:true, 'yoffset': 1.0 } }

" - down / up / left / right
let g:fzf_layout = { 'down': '40%' }

" - Window using a Vim command
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'window': '-tabnew' }
let g:fzf_layout = { 'window': '10new' }

" Customize fzf colors to match your color scheme
" - fzf#wrap translates this to a set of `--color` options
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

" Enable per-command history
" - History files will be stored in the specified directory
" - When set, CTRL-N and CTRL-P will be bound to 'next-history' and
"   'previous-history' instead of 'down' and 'up'.
let g:fzf_history_dir = '~/.local/share/fzf-history'

"----------------------------------------------------------
"fzf config
"----------------------------------------------------------
"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
"@@@@@@@@@@@@@@@@@@@@@%%@@@@@@@@@@@@@@@@@@@@@@@@@@@
"@@@@@@@@@@@@@@@@@@@@@%%@@@@@@@@@@@@%%###***%@@@@@@
"@@@@@@@@@@@@@@@@@@@@@%#%@@%%###****##****#%@@@@@@@
"@@@@@@@@@@@@@@@@%%%##***###%%%%@@@@%***#%@@@@@@@@@
"@@@@@@@@%%######%%%%@#*%@@@@@@@@@%#**#%@@@@@@@@@@@
"@@@@@@@@@@@@@@@@@@@@@#*%@@@@@@@%#**#%@@@@@@@@@@@@@
"@@@@@@@@@@@@@@@@@@@@@#*#@@@@@%#**#%@@@@@@@@@@@%@@@
"@@@@@@@@@@@@@@@@@@@@@#*#@@@%#**#%@@@@@@@@@@%#%@@@@
"@@@@@@@@@@@@@@@@@@@@@#*#@%#**#%@@@@@@@@@@#*#@@@@@@
"@@@@@@@@@@@@@@@@@@@@@#**#**#%@@@@@@@@@@#*#%@@@@@@@
"@@@@@@@@@@@@@@@@@@@@@#***#%@@@@@@@@@@#**%@@@@@@@@@
"@@@@@@@@@@@@@@@@@@@@#***@@@@@@@@@@@#**%@@@@@@@@@@@
"@@@@@@@@@@@@@@@@@@#*****@@@@@@@@%#**%@@@@@@@@@@@@@
"@@@@@@@@@@@@@@@@#**#@#**@@@@@@%#**%@@@@@@@@@@@@@@@
"@@@@@@@@@@@@@@#**#@@@#**@@@@%***#@@@@@@@@@@@@@@@@@
"@@@@@@@@@@@@#**%@@@@@#**@@%***#@@@@@@@@@@@@@@@@@@@
"@@@@@@@@@@#**%@@@@@@@#**%***#@@@@@@@@@@@@@@@@@@@@@
"@@@@@@@@%**%@@@@@@@@@#****#@@@@@@@@@@@@@@@@@@@@@@@
"@@@@@@%##%@@@@@@@@@@@#**#@@@@@@@@@@@@@@@@@@@@@@@@@
"@@@@%#%%@@@@@@@@@@@@@@%@@@@@@@@@@@@@@@@@@@@@@@@@@@
"@@@%%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
