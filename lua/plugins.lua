return require('packer').startup(function(use)
  -- packer manage itself
  use 'wbthomason/packer.nvim'

  -- Gruvbx baby
  use 'morhetz/gruvbox'

  --LSP plugins
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use 'onsails/lspkind-nvim'

  --Autocompletion
  use 'hrsh7th/nvim-cmp' --Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' --LSP source for nvim-cmp
  use 'hrsh7th/cmp-buffer' --buffer completion source
  use 'saadparwaiz1/cmp_luasnip' --Snippets source for nvim-cmp
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-path' --path completion source
  use 'f3fora/cmp-spell' --spelling completion source
  use 'hrsh7th/cmp-calc' --calculator compeltion source

  use { "L3MON4D3/Luasnip", branch = "ls_snippets_preserve" } --snippet provider

  --telescope
  use 'nvim-lua/plenary.nvim'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use 'kyazdani42/nvim-web-devicons'
  use 'nvim-telescope/telescope-fzy-native.nvim'


  --I only use this for syntax highliting xD
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  use 'p00f/nvim-ts-rainbow'

  use 'JoosepAlviste/nvim-ts-context-commentstring'


  --GIT functionality
  use {
    'tpope/vim-fugitive'
  }

  --utilities
  use { 'mattn/emmet-vim' }

  use "lukas-reineke/indent-blankline.nvim"

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
  }

  use {
    'glepnir/dashboard-nvim',
    dependencies = { { 'nvim-tree/nvim-web-devicons' } }
  }

  use { "windwp/nvim-autopairs" }

  use {
    "ray-x/lsp_signature.nvim",
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use {
    'glepnir/lspsaga.nvim',
    branch = "main",
    requires = {
      { "nvim-tree/nvim-web-devicons" },
      { "nvim-treesitter/nvim-treesitter" }
    }
  }

  use {
    'lewis6991/gitsigns.nvim',
    tag = 'release' -- To use the latest release
  }


  -- for comments
  use {
    'numToStr/Comment.nvim'
  }

  -- java language server
  use 'mfussenegger/nvim-jdtls'


end)
