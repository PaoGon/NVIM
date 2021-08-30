call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'morhetz/gruvbox'

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  

Plug 'scrooloose/NERDTree'

Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'

call plug#end()

colorscheme gruvbox
highlight Normal guibg=none
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts=1

