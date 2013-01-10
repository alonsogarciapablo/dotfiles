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

set clipboard=unnamed " use system clipboard

" show a line cursor in insert mode, otherwise show a block cursor
" works in iTerm, may not work in Terminal
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" restore cursor position when a file is reopened
autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

" Fancier status lines
set laststatus=2
set statusline=                    " clear the statusline
set statusline+=%2*[%n%H%M%R%W]%*\ " flags and buf no
set statusline+=%-40f\             " path
set statusline+=%=%1*%y%*%*\       " file type
set statusline+=%10((%l,%c)%)\     " line and column
set statusline+=%P                 " percentage of file

" show accidental tab characters
set list listchars=tab:»·

" Show trailing whitepace and spaces before a tab:
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/

" copy a command to the clipboard that will run the current spec
map <Leader>r :let @+="bundle exec rspec " .@% . ":" . line(".")<CR>

" select all - hit "``" to return to previous selection
map <Leader>a m`ggvG$

map <Leader>c "+y
map <Leader>v "+p
map <Leader>x "+x

" swap files
set noswapfile

" Easier moving in tabs and windows
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-L> <C-W>l
noremap <C-H> <C-W>h
noremap <S-H> gT
noremap <S-L> gt
