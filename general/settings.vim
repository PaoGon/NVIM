  "████████           ██     ██   ██                         
 "██░░░░░░           ░██    ░██  ░░            █████         
"░██         █████  ██████ ██████ ██ ███████  ██░░░██  ██████
"░█████████ ██░░░██░░░██░ ░░░██░ ░██░░██░░░██░██  ░██ ██░░░░ 
"░░░░░░░░██░███████  ░██    ░██  ░██ ░██  ░██░░██████░░█████ 
       "░██░██░░░░   ░██    ░██  ░██ ░██  ░██ ░░░░░██ ░░░░░██
 "████████ ░░██████  ░░██   ░░██ ░██ ███  ░██  █████  ██████ 
"░░░░░░░░   ░░░░░░    ░░     ░░  ░░ ░░░   ░░  ░░░░░  ░░░░░░  

"set leader key
nnoremap <SPACE> <Nop>
let g:mapleader = "\<Space>"

syntax enable
set encoding=utf8
set guifont=Hack\ Nerd\ Font\ 11
set relativenumber
set nohlsearch
set nowrap
set nu
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set incsearch
set scrolloff=8
set clipboard=unnamedplus 
set cursorline
set colorcolumn=100
highlight ColorColumn ctermbg=65
set signcolumn=yes
highlight CmpItemMenu guifg=#3c3836 guibg=#504945

"set nobackup
"set undodir=~/.vim/undodir
"set undofile

let g:python3_host_prog = "/usr/bin/python3.9"

au! BufWritePost $MYVIMRC source %      
cmap w!! w !sudo tee %
