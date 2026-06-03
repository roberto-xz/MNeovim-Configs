
local Plug = vim.fn['plug#']
vim.call('plug#begin')
    Plug 'hrsh7th/cmp-buffer'
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'nvim-tree/nvim-tree.lua'
    Plug 'Mofiqul/dracula.nvim'
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'lukas-reineke/indent-blankline.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'rmagatti/auto-session'
vim.call('plug#end')


require 'basic_conf'  -- configurações básicas
require 'shortkmaps'  -- shortcuts do teclado <Sublimet-Text>


-- configuracoes dos plugini
require 'plg_configs.nvimcmp'
require 'plg_configs.lualine'
require 'plg_configs.nvmtree'
require 'plg_configs.treesitter'
require 'plg_configs.identguides'
require 'telescope'.setup({})

-- configurações dos LSP
require('lsp_configs.ts_ls')
require('lsp_configs.lua_lg')

