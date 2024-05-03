-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use {
	  'p00f/cphelper.nvim',
	  requires ={
		  {'nvim-lua/plenary.nvim'}
	  }
  }

  use {
	  "windwp/nvim-autopairs",
	  config = function() require("nvim-autopairs").setup {} end
  }

  use {
	  "nvim-neo-tree/neo-tree.nvim",
	  branch = "v3.x",
	  requires = { 
		  "nvim-lua/plenary.nvim",
		  "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		  "MunifTanjim/nui.nvim",
	  }
  }

  use {'neovim/nvim-lspconfig'}
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'

  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

  use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use {
	  "lukas-reineke/indent-blankline.nvim",
	  config = function() require("ibl").setup {} end
  }
  use {"RRethy/vim-illuminate"}
  
  -- colorscheme stuff
  use {'marko-cerovac/material.nvim'}

  --use {
	  --'maxmx03/solarized.nvim',
	  --config = function()
		  --vim.o.background = 'light'
	  --end
  --}

  use {"preservim/nerdcommenter"}
  use {"~/Documents/GitHub/cpa-cache"}
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
	  require("toggleterm").setup()
  end}
end)
