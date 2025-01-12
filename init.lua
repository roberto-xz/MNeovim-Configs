
local Plug = vim.fn['plug#']
vim.call('plug#begin')
	Plug 'neovim/nvim-lspconfig'
	Plug 'hrsh7th/cmp-nvim-lsp'
	Plug 'hrsh7th/cmp-buffer'
	Plug 'hrsh7th/cmp-path'
	Plug 'hrsh7th/cmp-cmdline'
	Plug 'hrsh7th/nvim-cmp'
	Plug 'onsails/lspkind.nvim'
	Plug 'rachartier/tiny-inline-diagnostic.nvim'
	Plug 'nvim-lualine/lualine.nvim'
	Plug 'nvim-tree/nvim-web-devicons'
    Plug 'nvim-tree/nvim-tree.lua'
    Plug 'projekt0n/github-nvim-theme'
vim.call('plug#end')

require 'basic_conf'
require 'shortkmaps'
require 'plugs_conf'
require('lsp_configs.ts_ls')
