
vim.opt.number = true
vim.opt.tabstop= 4
vim.opt.shiftwidth=4
vim.opt.expandtab=true
vim.opt.mouse="a"
vim.opt.wrap = false
vim.opt.termguicolors=true
vim.opt.cmdheight = 0

vim.cmd('set signcolumn=yes')
vim.cmd('colorscheme dracula')
vim.cmd([[autocmd VimEnter * NvimTreeOpen]])

vim.diagnostic.config({
    virtual_text = false,
	signs = true,
    underline = false,       -- Sublinhar texto com problemas.
    severity_sort = true,   -- Ordenar por severidade.
    update_in_insert = true, -- Não atualizar no modo de inserção. 
})

local signs = {
  Error = "󰅚",    -- Ícone para erros
  Warn  = "󰌶",     -- Ícone para avisos
  Hint  = "󰌶",     -- Ícone para dicas
  Info = ""      -- Ícone para informações
}

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

 
-- Configura folding com Treesitter
vim.o.foldmethod = "expr"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"
vim.o.foldlevel = 99  -- Expande todos os folds por padrão



