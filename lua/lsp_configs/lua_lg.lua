
local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.lsp.config('lua_ls', { 
  cmd = { "lua-language-server" },
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' },
      },
    },
  },
})

vim.lsp.enable('lua_ls')