
local close_buffer = require('src_scripts.close_buffer')
local swap_buffer = require('src_scripts.swap_buffer')
local safe_exit = require('src_scripts.safe_exit')
local toggle_TtB = require('src_scripts.toggle_TtB')
local telescope = require('telescope.builtin')


local options = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>w', '<Cmd>write!<CR>', options)
vim.keymap.set('n', '<leader>q', safe_exit, options)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, options)
vim.keymap.set('n', '<F2>', vim.lsp.buf.rename, options)
vim.keymap.set('n', '<leader>b', '<Cmd>b#<CR>', options)
vim.keymap.set('n', '<leader>k', '<Cmd>m -2<CR>', options)
vim.keymap.set('n', '<leader>j', '<Cmd>m +1<CR>', options)
vim.keymap.set('v', '<leader>k', ":m '<-2<CR>gv=gv", options)
vim.keymap.set('v', '<leader>j', ":m '>+1<CR>gv=gv", options)
vim.keymap.set('n', '<leader>d', 'yyp', options)
vim.keymap.set('v', '<leader>d', 'y', options)
vim.keymap.set('n', '<leader>x', '<Cmd>bdelete<CR>', options)
vim.keymap.set('n', '<leader>z', 'u', options)

vim.keymap.set('n', '<leader>l', function()
    swap_buffer(1)
end, options)

vim.keymap.set('n', '<leader>h', function()
    swap_buffer(-1)
end, options)

vim.keymap.set('v', '<leader>/', function()
    require('Comment.api').toggle.linewise(vim.fn.visualmode())
end, options)

vim.keymap.set('n', '<leader>t', toggle_TtB, options)
vim.keymap.set('n', '<leader>c', close_buffer, options)
vim.keymap.set('n', '<leader>[', 'zc', options)
vim.keymap.set('n', '<leader>]', 'zo', options)
vim.keymap.set('n', '<leader>ff', telescope.find_files)
vim.keymap.set('n', '<leader>fg', telescope.live_grep)
vim.keymap.set('n', '<leader>fb', telescope.buffers)
vim.keymap.set('n', '<leader>fr', telescope.oldfiles)
