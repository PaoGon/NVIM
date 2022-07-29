 --██████████ ████████ ██       ████████  ████████   ██████  ███████
--░░░░░██░░░ ░██░░░░░ ░██      ░██░░░░░  ██░░░░░░   ██░░░░██░██░░░░██
    --░██    ░██      ░██      ░██      ░██        ██    ░░ ░██   ░██
    --░██    ░███████ ░██      ░███████ ░█████████░██       ░███████
    --░██    ░██░░░░  ░██      ░██░░░░  ░░░░░░░░██░██       ░██░░░░
    --░██    ░██      ░██      ░██             ░██░░██    ██░██
    --░██    ░████████░████████░████████ ████████  ░░██████ ░██
    --░░     ░░░░░░░░ ░░░░░░░░ ░░░░░░░░ ░░░░░░░░    ░░░░░░  ░░


local actions = require('telescope.actions')

local map = function(mode, lhs, rhs, opts)
  vim.keymap.set(mode, lhs, rhs, opts)
end

require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    -- ..

    layout_config = {
      preview_width = 0.6
    },

    file_sorter = require('telescope.sorters').get_fzy_sorter,
    prompt_prefix = '>',
    color_devicons = true,

    file_previewer = require('telescope.previewers').vim_buffer_cat.new,
    grep_previewer = require('telescope.previewers').vim_buffer_vimgrep.new,
    qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,

    mappings = {
        i = {
            ["<C-x>"] = false,
            ["<C-q>"] = actions.send_to_qflist
        },
    }
  },
  extensions = {
    fzy_native = {
        override_generic_sorter = false,
        override_file_sorter = true
    }
  }
}
require('telescope').load_extension('fzy_native')

map('n', '<leader>ff', ':Telescope find_files<cr>', {noremap = true}) -- list all files in current DIR
map('n', '<leader>gf', ':Telescope git_files<cr>', {noremap = true})  -- list all git files in current DIR with respect to .gitigonre
map('n', '<leader>fg', ':Telescope live_grep<cr>', {noremap = true})  -- live grep
map('n', '<leader>bf', ':Telescope buffers<cr>', {noremap = true})  -- Lists open buffers in current neovim instance
map('n', '<leader>fh', ':Telescope help_tags<cr>', {noremap = true})  -- Lists available help tags and opens a new window with the relevant help info on <cr>
map('n', '<leader>of', ':Telescope oldfiles<cr>', {noremap = true})  -- Lists previously open files
map('n', '<leader>mn', ':Telescope man_pages<cr>', {noremap = true})  -- Lists manpage entries, opens them in a help window on <cr>
map('n', '<leader>km', ':Telescope keymaps<cr>', {noremap = true})  -- Lists normal mode keymappings

--git pickers
map('n', '<leader>gc', ':Telescope git_commits<cr>', {noremap = true})  -- Lists git commits
map('n', '<leader>gb', ':Telescope git_branches<cr>', {noremap = true})  -- Lists git branches
map('n', '<leader>gs', ':Telescope git_status<cr>', {noremap = true})  -- Lists git status
