
require('lualine').setup ({
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

