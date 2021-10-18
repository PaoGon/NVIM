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

"set nobackup
"set undodir=~/.vim/undodir
"set undofile


au! BufWritePost $MYVIMRC source %      
cmap w!! w !sudo tee %
