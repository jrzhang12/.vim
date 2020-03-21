"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => System 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set mouse=a
set encoding=utf-8
set clipboard=unnamed

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tab
set tabstop=2
set shiftwidth=2
set list
set listchars=tab:▸\ ,trail:▫
set scrolloff=5

" Backspace
set backspace=indent,eol,start

" Prevent incorrect backgroung rendering
let &t_ut=''

" Setup
syntax on
set number
set relativenumber
set ruler
set cursorline

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" === General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=" "
map s <nop>
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>

" prevent auto wrapping
set wrap
set tw=0

set showcmd
set wildmenu

" search
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
noremap <LEADER><CR> :nohlsearch<CR>
noremap = nzz
noremap - Nzz

" insert
noremap h i
noremap H I

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" === Cursor Movement
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" remap cursor
noremap i k
noremap k j
noremap j h
" move faster
noremap I 5k
noremap K 5j

" split windows
map si :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
map sk :set splitbelow<CR>:split<CR>
map sj :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
map sl :set splitright<CR>:vsplit<CR>

" move around windows
map <LEADER>w <C-w>w
map <LEADER>i <C-w>k
map <LEADER>k <C-w>j
map <LEADER>j <C-w>h
map <LEADER>l <C-w>l

" Resize splits with arrow keys
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

" change cursor shape
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

call plug#begin('~/.vim/plugged')
" File navigation
Plug 'preservim/nerdtree'

" ui
Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'

call plug#end()

" NERDTree
map tt :NERDTreeToggle<CR>

color snazzy
let g:SnazzyTransparent = 1
