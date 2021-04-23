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
set relativenumber
let mapleader = " "
set shiftwidth=4
set tabstop=4
set laststatus=2
set backspace=2
set guioptions-=T
set guioptions-=L
imap jk <Esc>
"---------- syntax and sets ----------
"---------- Mapping to reload config ----------
nmap <leader>so :source $HOME\_vimrc<CR>
nmap <leader>w :w <CR>
nmap <leader>q :q <CR>
"---------- Mapping to reload config ----------
"---------- Fonts ----------
if has("gui_running")

  if has("gui_gtk2")
    set guifont=Cascadia_Code\ 16
  elseif has("gui_macvim")
    set guifont=Cascadia_Code\Regular:h16
  elseif has("gui_win32")
    set guifont=Cascadia_Code:h16:cANSI:qDRAFT
  endif
endif
"---------- Fonts ----------
"---------- Plugins ----------
call plug#begin('~/.vim/plugged')
" Temas
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
"identGuide
Plug 'nathanaelkane/vim-indent-guides'
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
call plug#end()
"---------- Plugins ----------
"---------- some configs ----------
"IndentGuide
let g:indent_guides_auto_colors = 1

"ligthline config
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }

"identGuideConfig
let g:indent_guides_enable_on_vim_startup = 1 
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>s <Plug>(easymotion-s2)

"gruvbox
colorscheme gruvbox
let g:gruvbox_contrast_dark="hard"
set bg:dark
"let g:gruvbox_termcolors=256

"Nerdtree
autocmd VimEnter * NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>gd :NERDTree D:\<CR>
nnoremap <leader>gc :NERDTree C:\<CR>
nnoremap <leader>pg :"*p<CR>
let NERDTreeShowHidden=1
"---------- some configs ----------

"------------------------------------------------------------------------------------------
"config Close tag                                                              
"-----------------------------------------------------------------------------------------

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

"------------------------------------------------------------------------------------------
"config Close tag                                                              
"-----------------------------------------------------------------------------------------


"----------------------------------------------------------
"config devicons
"----------------------------------------------------------
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_tabline = 1
"----------------------------------------------------------
"config devicons
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

