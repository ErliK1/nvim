-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  }

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('ThePrimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use "nvim-lua/plenary.nvim"

  use "ThePrimeagen/vim-apm"

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim'},           -- Optional
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},         -- Required
		  {'hrsh7th/cmp-nvim-lsp'},     -- Required
		  {'hrsh7th/cmp-buffer'},       -- Optional
		  {'hrsh7th/cmp-path'},         -- Optional
		  {'saadparwaiz1/cmp_luasnip'}, -- Optional
		  {'hrsh7th/cmp-nvim-lua'},     -- Optional

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},             -- Required
		  {'rafamadriz/friendly-snippets'}, -- Optional
	  }
  }
  
  use "folke/tokyonight.nvim"

  use {
	  "catppuccin/nvim",
	  as = "catppuccin"
  }

  use {

      "christoomey/vim-tmux-navigator",
      lazy = false
  }

  use {
        "mfussenegger/nvim-jdtls"
  }
  
  --use {

    --  'r-cha/encourage.nvim',
      --config = function()
        --  require('encourage').setup()
      --end
  --}
  use {
      "marcussimonsen/let-it-snow.nvim",
      cmd = "LetItSnow",
      opts = {
          ---@type integer Delay between updates
          delay = 500,
          ---@type string Single character used to represent snowflakes
          snowflake_char = "\u{2744}",
          ---@type string[] Array of single character used to represent snow (in order of least to most)
          snowpile_chars = {
              [1] = "\u{2581}",
              [2] = "\u{2582}",
              [3] = "\u{2583}",
              [4] = "\u{2584}",
              [5] = "\u{2585}",
              [6] = "\u{2586}",
              [7] = "\u{2587}",
              [8] = "\u{2588}",
          },
          ---@type integer Max attempts at spawning a snowfile
          max_spawn_attempts = 500,
          ---@type boolean Whether to create highlight groups or not
          create_highlight_groups = true,
          ---@type string Name of namespace to use for extmarks (you probably don't need to change this)
          namespace = "let-it-snow",
          ---@type string Name of highlight group to use for snowflakes
          highlight_group_name_snowflake = "snowflake",
          ---@type string Name of highlight group to use 


      }
  }

end)
