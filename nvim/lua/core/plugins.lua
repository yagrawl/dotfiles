local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- theme
  use 'folke/tokyonight.nvim'

  -- nerdTree
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'

  -- status bar
  use 'nvim-lualine/lualine.nvim'
  use 'github/copilot.vim'

  use 'nvim-treesitter/nvim-treesitter'
  use {
    'akinsho/bufferline.nvim', tag = '*',
    requires = 'nvim-tree/nvim-web-devicons'
  }

  -- language server protocol
  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
		'nvimdev/lspsaga.nvim'
  }

  -- autocomplete
  use {
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'L3MON4D3/LuaSnip'
  }

  -- utilities
  use 'preservim/vimux'
  use 'tpope/vim-commentary'

  -- git
  use 'lewis6991/gitsigns.nvim'

  -- learning
  use {
   "m4xshen/hardtime.nvim",
   requires = { 'MunifTanjim/nui.nvim', "nvim-lua/plenary.nvim" }
  }

  -- telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end)
