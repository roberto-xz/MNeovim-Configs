
local options= {noremap=true, silent=true}
vim.keymap.set({'n','i'}, "<C-w>", ":write<CR>",options)
vim.keymap.set({'n','i'}, "<C-q>", ":quit<CR> ",options)
vim.keymap.set({'n','i'}, "<C-r>", vim.lsp.buf.rename,options)
vim.keymap.set({'n','i'}, "<C-k>", vim.lsp.buf.definition,options)
vim.keymap.set({'n','i'}, "<C-b>", "<Cmd>b#<CR>",options)


-- Mover linha para cima/baixo
vim.keymap.set({'n','i','v'}, "<S-Up>", "<Cmd>m -2<CR>", options)
vim.keymap.set({'n','i','v'}, "<S-Down>", "<Cmd>m +1<CR>",options)
vim.keymap.set({'n','i','v'}, "<C-d>", "<ESC>yyp<CR>i",options)
vim.keymap.set({'n','i','v'}, "<C-x>", "<Cmd>delete<CR>",options)
vim.keymap.set({'n','i','v'}, "<C-z>", "<ESC>u<CR>i",options)
vim.keymap.set({'n','i','v'}, "<C-Right>", "<Cmd>bn<CR>",options)
vim.keymap.set({'n','i','v'}, "<C-Left>", "<Cmd>bp<CR>",options)

-- abrir nvim-tree
vim.keymap.set({'i','n','v'},'<C-f>',function()
    vim.cmd("NvimTreeFocus")
end)