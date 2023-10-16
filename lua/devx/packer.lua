vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use ({
		'cocopon/iceberg.vim',
		as = 'iceberg',
	})
	use({
		'rose-pine/neovim',
		as = 'rose-pine',
	})
	use 'easymotion/vim-easymotion'
	use {'neoclide/coc.nvim', branch = 'release'}
		-- or                            , branch = '0.1.x',
	use 'EdenEast/nightfox.nvim'
	use 'ThePrimeagen/harpoon'
	use 'vimwiki/vimwiki'
	use 'vim-airline/vim-airline'
	use 'vim-airline/vim-airline-themes'
	use 'untitled-ai/jupyter_ascending.vim'
	use 'dart-lang/dart-vim-plugin'
	use 'rafi/awesome-vim-colorschemes'
	use {
	  'nvim-tree/nvim-tree.lua',
	  requires = {
	    'nvim-tree/nvim-web-devicons', -- optional, for file icons
	  },
	  tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}
	use 'jwalton512/vim-blade'
	use {"akinsho/toggleterm.nvim", tag = '*', config = function()
	  require("toggleterm").setup(
	  )
	end}
	use 'maxmellon/vim-jsx-pretty'
	use 'yuezk/vim-js'
	use 'norcalli/nvim-colorizer.lua'

	use 'tpope/vim-fugitive'
	use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
	use { "catppuccin/nvim", as = "catppuccin" }
	use 'folke/tokyonight.nvim'
	use ({ 'projekt0n/github-nvim-theme', tag = 'v0.0.7' })

	use {
	'prettier/vim-prettier',
	run = 'yarn install --frozen-lockfile --production',
	
	}
	use 'chrisbra/csv.vim'
	use 'mattn/emmet-vim'
	use {
  'nvim-telescope/telescope.nvim', tag = '0.1.3',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}


end)
