local capabilities = require('cmp_nvim_lsp').default_capabilities()
local ts_lsp_group = vim.api.nvim_create_augroup("TsLspGroup", { clear = true })


local lsp_binary_path = "/home/roberto-xz/.nvm/versions/node/v20.20.2/bin/typescript-language-server" 

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
  group = ts_lsp_group,
  callback = function(args)
    vim.lsp.start({
      name = 'ts_ls',
      cmd = { lsp_binary_path, "--stdio" },
      capabilities = capabilities,
      root_dir = vim.fs.root(args.buf, { "package.json", "tsconfig.json" }),
    })
  end,
})