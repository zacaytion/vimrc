execute pathogen#infect()

filetype on
syntax on
colorscheme vice

set lines=35 columns=150
set colorcolumn=90
set number
map <Leader>s :source ~/.virmc<CR>

set backspace=indent,eol,start

set hidden
set history=100

filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

autocmd BufWritePre * :%s/\s\+$//e

set hlsearch

nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

nnoremap <Leader><Leader> :e#<CR>

set showmatch

