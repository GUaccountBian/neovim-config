-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'  -- packer itself
  use 'sainnhe/everforest'  -- a eye pleasant theme
  use 'neovim/nvim-lspconfig' -- LSP config
  use 'hrsh7th/cmp-nvim-lsp' -- completion plugin
  use 'hrsh7th/cmp-buffer' -- completion plugin
  use 'hrsh7th/cmp-path' -- completion plugin
  use 'hrsh7th/cmp-cmdline' -- completion plugin
  use 'hrsh7th/nvim-cmp' -- completion plugin
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'onsails/lspkind-nvim'
  use 'jiangmiao/auto-pairs'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'nvim-lua/plenary.nvim'
  use 'windwp/nvim-autopairs'
  use 'norcalli/nvim-colorizer.lua'
  use 'terrortylor/nvim-comment'
  use 'EdenEast/nightfox.nvim' -- nightfox theme
  use { -- status line
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
end)
