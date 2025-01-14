
require('nvim-tree').setup({
    view = {adaptive_size = true},
    -- auto_close = true,
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
            bookmarks=true,
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
