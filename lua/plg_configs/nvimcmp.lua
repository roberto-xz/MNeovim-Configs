
local nvmcmp = require('cmp')
local lskind = require('lspkind')

nvmcmp.setup({
    sources = nvmcmp.config.sources({
        { name = 'nvim_lsp', priority = 10 },
        { name = 'buffer', priority = 5 },
        { name = 'path', priority = 4 }
    }),

    formatting = {
        format = lskind.cmp_format({
            with_text = true,
            menu = {
                nvim_lsp = "[LSP]",
                buffer = "[Buffer]",
                path = "[Path]",
            }
        }),
    },

    mapping = nvmcmp.mapping.preset.insert({
        ['<Down>'] = nvmcmp.mapping.select_next_item(),
        ['<Up>']   = nvmcmp.mapping.select_prev_item(),
        ['<CR>']   = nvmcmp.mapping.confirm({ select = true }),
    })
})
