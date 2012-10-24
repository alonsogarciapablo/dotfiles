" --------------------
" Indentation settings
" --------------------

" use spaces instead of tabs by default, with 2-space indentation
set nowrap
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set mouse=a
set ttymouse=xterm2
set ttyfast

" remove trailing spaces
map <Leader>w :%s/\s\+$//e<CR>

" pathogen.vim
call pathogen#infect()
syntax on
filetype plugin indent on

" let mapleader=""

" NERDTree mappings
map <Leader>p :NERDTreeToggle<CR>
map <Leader>P :NERDTreeFind<CR>

colorscheme railscasts

set number
