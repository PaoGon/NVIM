call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'morhetz/gruvbox'

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'scrooloose/NERDTree'

Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'

call plug#end()

colorscheme gruvbox
highlight Normal guibg=none
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts=1

