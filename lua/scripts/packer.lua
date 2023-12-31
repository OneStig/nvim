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
	  'nvim-tree/nvim-tree.lua',
	  requires = {
		  'nvim-tree/nvim-web-devicons', -- optional
	  },
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

  use {"lukas-reineke/indent-blankline.nvim"}
  use {"RRethy/vim-illuminate"}
  
  -- colorscheme stuff
  use {'nyoom-engineering/oxocarbon.nvim'}
  use {'overcache/NeoSolarized'}
  use {
	  'scottmckendry/cyberdream.nvim',
	  lazy = false,
	  priority = 1000,
	  config = function()
		  require("cyberdream").setup({
			  transparent = true, -- enable transparent background
			  italic_comments = true, -- italicize comments
			  hide_fillchars = true, -- replace all fillchars with ' ' for the ultimate clean look
		  })
	  end,
  }

  use {"preservim/nerdcommenter"}
  use {"jupyter-vim/jupyter-vim"}

  use {"~/Documents/GitHub/cpa-cache"}
  --use {'OneStig/cpa-cache'}
end)
