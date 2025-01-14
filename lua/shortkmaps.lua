
local close_buffer = require('src_scripts.close_buffer')
local swap_buffer  = require('src_scripts.swap_buffer')
local safe_exit    = require('src_scripts.safe_exit')
local options= {noremap=true, silent=true}

vim.keymap.set({'n','i'}, "<C-w>", "<Cmd>write!<CR>",options)
vim.keymap.set({'n','i'}, "<C-e>",safe_exit,options)
vim.keymap.set({'n','i'}, "<C-k>", vim.lsp.buf.definition,options)
vim.keymap.set({'n','i'}, "<C-r>", vim.lsp.buf.rename,options)
vim.keymap.set({'n','i'}, "<C-b>", "<Cmd>b#<CR>",options)
vim.keymap.set({'n','i','v'}, "<C-Up>", "<Cmd>m -2<CR>", options)
vim.keymap.set({'n','i','v'}, "<C-Down>", "<Cmd>m +1<CR>",options)
vim.keymap.set({'n','i','v'}, "<C-d>", "<ESC>yyp<CR>i",options)
vim.keymap.set({'n','i','v'}, "<C-x>", "<Cmd>delete<CR>",options)
vim.keymap.set({'n','i','v'}, "<C-z>", "<ESC>u<CR>i",options)
vim.keymap.set({'n','i','v'}, "<C-Right>",function() swap_buffer('r') end)
vim.keymap.set({'n','i','v'}, "<C-Left>",function() swap_buffer('l') end)

vim.keymap.set({'i','n','v'},'<C-f>',function()vim.cmd("NvimTreeFocus") end)
vim.keymap.set({'i','n','v'},'<C-q>',close_buffer)

