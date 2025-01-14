
require 'nvim-treesitter.configs'.setup({
    ensure_installed = {
        'c','java','gitignore','dockerfile',
        'http','python','javascript',
        'typescript','css','html','lua',
        'java','json','vue','vim','yaml'
    },

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    fold = {enable=true}
})


