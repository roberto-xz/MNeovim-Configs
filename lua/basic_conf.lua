
vim.opt.number = true
vim.opt.tabstop= 4
vim.opt.shiftwidth=4
vim.opt.expandtab=true
vim.opt.mouse="a"
vim.opt.wrap = false
vim.opt.termguicolors=true
vim.opt.cmdheight = 0
vim.opt.cursorline = true
vim.opt.clipboard:append("unnamedplus")
vim.g.mapleader = " "


_G.buffer_origen_2712a21 = nil -- guarda o id do buffer em foco

vim.cmd('set signcolumn=yes')
vim.cmd('colorscheme dracula')

vim.diagnostic.config({
    virtual_text = {
        spacing = 4,
        prefix = ".",
    },
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "×",
            [vim.diagnostic.severity.WARN]  = "∆",
            [vim.diagnostic.severity.HINT]  = "✓",
            [vim.diagnostic.severity.INFO]  = "i",
        },
    },
    underline = true,
    severity_sort = true,
    update_in_insert = true,
})

 
-- Configura folding com Treesitter
vim.o.foldmethod = "expr"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"
vim.o.foldlevel = 99  -- Expande todos os folds por padrão


vim.api.nvim_create_autocmd("VimEnter", {
    callback = function(data)
        local directory = vim.fn.isdirectory(data.file) == 1

        if directory then
            vim.cmd.cd(data.file)
            require("nvim-tree.api").tree.open()
        end
    end,
})
