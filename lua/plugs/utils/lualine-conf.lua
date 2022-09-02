 --██       ██     ██     ██      ██ ██
--░██      ░██    ░██    ████    ░██░░
--░██      ░██    ░██   ██░░██   ░██ ██ ███████   █████
--░██      ░██    ░██  ██  ░░██  ░██░██░░██░░░██ ██░░░██
--░██      ░██    ░██ ██████████ ░██░██ ░██  ░██░███████
--░██      ░██    ░██░██░░░░░░██ ░██░██ ░██  ░██░██░░░░
--░████████░░███████ ░██     ░██ ███░██ ███  ░██░░██████
--░░░░░░░░  ░░░░░░░  ░░      ░░ ░░░ ░░ ░░░   ░░  ░░░░░░

require'lualine'.setup {
  options = {
    icons_enabled = true,
    theme = 'gruvbox',
    --section_separators = {left = '', right = ''},
    --component_separators = {left = '', right = ''},
    component_separators = '',
    section_separators = { left = '', right = ' ' },
    disabled_filetypes = {}
  },

  sections = {
    lualine_a = {'mode'},
    lualine_b = {
        'branch',
        {
            'diff',
            colored = true,
            symbols = {
                added = '+',
                modified = '~',
                removed = '-'
            }
        }
    },
    lualine_c = {},
    lualine_x = {
          {
            'diagnostics',

            sources = {"nvim_diagnostic"},
            symbols = {
                error = ' ',
                warn = ' ',
                info = ' ',
                hint = ' '
            }
      },
          'encoding',
          'fileformat',
          'filetype'
    },
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {
    lualine_a = {
      {
        'tabs',
        max_length = vim.o.columns / 3, -- Maximum width of tabs component.
                                        -- Note:
                                        -- It can also be a function that returns
                                        -- the value of `max_length` dynamically.
        mode = 1, -- 0: Shows tab_nr
                  -- 1: Shows tab_name
                  -- 2: Shows tab_nr + tab_name
      }
    }
  },
  extensions = {}
}
