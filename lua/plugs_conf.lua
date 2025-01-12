
local cmp = require('cmp')
local kid = require('lspkind')
local dig = require('tiny-inline-diagnostic')
local lln = require('lualine')
local tre = require('nvim-tree')

lln.setup ({
  options = {
    disabled_filetypes = {'NvimTree'},
    icons_enable=true,
    theme = 'material',
  },

  inactive_sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff'},
    lualine_c = {},
    lualine_x = {'fileformat','filetype'},
    lualine_y = {},
    lualine_z = {'location'}
  },

  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff'},
    lualine_c = {},
    lualine_x = {'fileformat','filetype'},
    lualine_y = {},
    lualine_z = {'location'}
  },

  inactive_winbar = {
  	lualine_a = {'buffers',{
		use_mode_colors = true, 
        buffers_color = {
            active = 'lualine_{section}_normal', 
            inactive = 'lualine_{section}_inactive',
        },
		symbols = {
        	modified = ' ●',      
        	alternate_file = '', 
        	directory =  '',
      },
	}},
	lualine_z = {"os.date('%H:%M %p')"},
  },
  
  winbar = {
  	lualine_a = {'buffers',{
		use_mode_colors = true,
		symbols = {
        	modified = ' ●',      
        	alternate_file = '', 
        	directory =  '',
      },
	}},
	lualine_z = {"os.date('%H:%M %p')"},
  },

})


tre.setup({
    view = {adaptive_size = true},
    sort = {
        sorter = "name",
        folders_first = true,
        files_first = false,
    },

    renderer = {
        root_folder_modifier=":t",
        group_empty = true,
        indent_markers = {
            enable = true,
            icons = {
                corner = "└ ",
                edge = "│ ",
                item = "│ ",
                none = "  ",
            }
        },
        icons = {
            webdev_colors = true,
            show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = false,
            bookmarks=false,
        },
        glyphs = {
            default = "",
            symlink = "",
            bookmark = "󰆤",
            modified = "●",
            hidden = "󰜌",
            folder = {
                arrow_closed = "",
                arrow_open = "",
                default = "",
                open = "",
                empty = "",
                empty_open = "",
                symlink = "",
                symlink_open = "",
            },
            git = {
                unstaged = "✗",
                staged = "✓",
                unmerged = "",
                renamed = "➜",
                untracked = "★",
                deleted = "-",
                ignored = "!",
            },
        }
        },      
    },
})

dig.setup({
	preset = 'nonerdfont',
	options = {
		add_messages=false,
		enable_on_insert=true,
	},
})

kid.setup({
	preset = 'codicons',
	symbol_map = {
 		Text = '  ',
  		Method = '  ',
  		Function = '  ',
  		Constructor = '  ',
  		Field = '  ',
  		Variable = '  ',
  		Class = '  ',
  		Interface = '  ',
  		Module = '  ',
  		Property = '  ',
  		Unit = '  ',
  		Value = '  ',
  		Enum = '  ',
  		Keyword = '  ',
  		Snippet = '  ',
  		Color = '  ',
  		File = '  ',
  		Reference = '  ',
  		Folder = '  ',
  		EnumMember = '  ',
  		Constant = '  ',
  		Struct = '  ',
  		Event = '  ',
  		Operator = '  ',
  		TypeParameter = '  ',
	},
})

cmp.setup({
    sources = cmp.config.sources({
        { name = 'nvim_lsp', priority = 10 },
        { name = 'buffer', priority = 5 },
        { name = 'path', priority = 4 }
    }),

    formatting = {
        format = kid.cmp_format({
            with_text = true,
            menu = {
                nvim_lsp = "[LSP]",
                buffer = "[Buffer]",
                path = "[Path]",
            }
        }),
    },
    
    mapping = cmp.mapping.preset.insert({
        ['<Down>'] = cmp.mapping.select_next_item(),
        ['<Up>']   = cmp.mapping.select_prev_item(),
        ['<CR>']   = cmp.mapping.confirm({ select = true }),
    })
})
