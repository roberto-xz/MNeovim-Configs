

require('lspconfig').lua_ls.setup({
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT', -- Usado pelo Neovim
        path = vim.split(package.path, ';'),
      },
      diagnostics = {
        globals = { 'vim' }, -- Reconhece 'vim' como uma variável global
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true), -- Adiciona as APIs do Neovim
        checkThirdParty = false,
      },
      telemetry = {
        enable = false, -- Desabilita telemetria
      },
    },
  },
})

