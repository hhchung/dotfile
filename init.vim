set nocompatible " not vi compatible


call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'dracula/vim', { 'name': 'dracula' }
Plug 'tpope/vim-markdown'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'luochen1990/rainbow'
Plug 'easymotion/vim-easymotion'
call plug#end()

"---------------------
" Color theme
"---------------------
if has('gui_running')
    colorscheme dracula
    set termguicolors
elseif &t_Co < 256
    colorscheme default
else
    let g:dracula_colorterm = 0
    colorscheme dracula
    set termguicolors
endif

"---------------------
" Basic setting
"----------------------
set encoding=utf-8
set fileencodings=utf-8
syntax on
set showmatch
filetype plugin indent on " enable file type detection
set autoindent
set shortmess+=I " disable startup introduction
set nu rnu       " relative line number
set incsearch    " incremental search
set hls          " highlight search
set linebreak    " split line at space
set scrolloff=10  " show lines above&below cursor
set noshowmode   " hide mode
set laststatus=2
set backspace=indent,eol,start " allow backspacing over everything, for MAC
set lazyredraw
set autochdir " auto change working directory
set hidden    " allow auto-hiding of edited buffers
set history=8192
set nojoinspaces
" use 4 spaces instead of tabs during formatting
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
" set spell
set ignorecase
set smartcase
set wildmode=longest,list
set wildmenu
set nofoldenable
set cursorline
" disable bell
set noerrorbells visualbell t_vb=

" open new split panes to right & below
set splitbelow
set splitright
" copy content to system clipboard
set clipboard+=unnamedplus

let mapleader=","

" unbind keys
map <C-a> <Nop>

" Keymap F2 for line number
noremap  <F2> <C-C>:set nu! rnu!<CR>
" Keymap F3 for NERDTree
noremap  <F3> <C-C>:NERDTreeToggle<CR>
" Keymap F4 for rainbow parentheses
noremap  <F4> <C-C>:RainbowToggle<CR>

" Plugin: easymotion/vim-easymotion 
map <Leader><leader>h <Plug>(easymotion-linebackward)
map <Leader><leader>l <Plug>(easymotion-lineforward)


" rainbow parentheses
let g:rainbow_active = 1

" airline theme
let g:airline_theme="onedark"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline_section_warning='' "remove trailing warning
let g:airline_detect_whitespace=0

" markdown
let g:markdown_fenced_languages = [
    \ 'bash=sh',
    \ 'c',
    \ 'javascript',
    \ 'json',
    \ 'perl',
    \ 'python',
    \ 'yaml',
\]
let g:markdown_syntax_conceal = 0
let g:markdown_folding = 1

