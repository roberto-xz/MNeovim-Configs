
local Plug = vim.fn['plug#']
vim.call('plug#begin')
	Plug 'hrsh7th/cmp-buffer'
	Plug 'neovim/nvim-lspconfig'
	Plug 'hrsh7th/cmp-nvim-lsp'
	Plug 'hrsh7th/cmp-path'
	Plug 'hrsh7th/cmp-cmdline'
	Plug 'hrsh7th/nvim-cmp'
	Plug 'onsails/lspkind.nvim'
	Plug 'nvim-lualine/lualine.nvim'
	Plug 'nvim-tree/nvim-web-devicons'
    Plug 'nvim-tree/nvim-tree.lua'
    Plug 'Mofiqul/dracula.nvim'
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'lukas-reineke/indent-blankline.nvim'
vim.call('plug#end')

require 'basic_conf'  -- configurações básicas
require 'shortkmaps'  -- shortcuts do teclado <Sublimet-Text>


-- configuracoes dos plugins
require 'plg_configs.nvimcmp'
require 'plg_configs.lualine'
require 'plg_configs.lspkind'
require 'plg_configs.nvmtree'
require 'plg_configs.treesitter'
require 'plg_configs.identguides'


-- configurações dos LSP
require('lsp_configs.ts_ls')
require('lsp_configs.lua_lg')

