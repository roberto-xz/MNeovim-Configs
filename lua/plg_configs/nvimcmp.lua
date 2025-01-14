
local nvmcmp = require('cmp')
local lskind = require('lspkind')

nvmcmp.setup({
    window = {
        completion = { border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" }},
        documentation =  false,
    },
    
    sources = nvmcmp.config.sources({
        { name = 'nvim_lsp', priority = 10 },
        { name = 'buffer', priority = 5 },
        { name = 'path', priority = 4 }
    }),

    formatting = {
        format = lskind.cmp_format({
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
        ['<C-Space>'] = nvmcmp.mapping.complete(),
        ['<Left>'] = nvmcmp.mapping.abort(),
        ['<Right>'] = nvmcmp.mapping.abort(),
        ['<CR>'] = nvmcmp.mapping.confirm({ select = true }),
    }),

    -- desativa o autocomplete em comentários
    enabled = function()
        local context = require 'cmp.config.context'
        if vim.api.nvim_get_mode().mode == 'c' then return true
        else
            return not context.in_treesitter_capture("comment") 
            and not context.in_syntax_group("Comment")
      end
    end
})
