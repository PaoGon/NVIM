 --██████████ ████████ ██       ████████  ████████   ██████  ███████ 
--░░░░░██░░░ ░██░░░░░ ░██      ░██░░░░░  ██░░░░░░   ██░░░░██░██░░░░██
    --░██    ░██      ░██      ░██      ░██        ██    ░░ ░██   ░██
    --░██    ░███████ ░██      ░███████ ░█████████░██       ░███████ 
    --░██    ░██░░░░  ░██      ░██░░░░  ░░░░░░░░██░██       ░██░░░░  
    --░██    ░██      ░██      ░██             ░██░░██    ██░██      
    --░██    ░████████░████████░████████ ████████  ░░██████ ░██      
    --░░     ░░░░░░░░ ░░░░░░░░ ░░░░░░░░ ░░░░░░░░    ░░░░░░  ░░       


local actions = require('telescope.actions')
require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    -- ..
    file_sorter = require('telescope.sorters').get_fzy_sorter,
    prompt_prefix = '>',
    color_devicons = true,

    file_previewer = require('telescope.previewers').vim_buffer_cat.new,
    grep_previewer = require('telescope.previewers').vim_buffer_vimgrep.new,
    qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,

    mappings = {
        i = {
            ["<C-x>"] = false,
            ["<C-q>"] = actions.send_to_qflist,
        },
    }
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
    fzy_native = {
        override_generic_sorter = false,
        override_file_sorter = true
    }
  }
}
require('telescope').load_extension('fzy_native')
