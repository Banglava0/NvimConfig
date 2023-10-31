vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      --- Uncomment these if you want to manage LSP servers from neovim
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'L3MON4D3/LuaSnip' },
    }
  }
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use('nvim-treesitter/playground')
  use('NLKNguyen/papercolor-theme')
  --use('sainnhe/gruvbox-material')
  use('morhetz/gruvbox')
  use { "catppuccin/nvim", as = "catppuccin" }
  use('neanias/everforest-nvim')
  use('nvim-lua/plenary.nvim')
  use('ThePrimeagen/harpoon')
  use('ThePrimeagen/vim-be-good')
  use("mbbill/undotree")
  use("nvim-treesitter/nvim-treesitter-context");
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true } }
  --use("tpope/vim-fugitive")
  -- test
  --use('vim-airline/vim-airline')
  --use('vim-airline/vim-airline-themes')
end)
