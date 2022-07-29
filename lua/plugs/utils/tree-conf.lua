
-- ██████████ ███████   ████████ ████████     ██
--░░░░░██░░░ ░██░░░░██ ░██░░░░░ ░██░░░░░     ░██
--    ░██    ░██   ░██ ░██      ░██          ░██ ██   ██  ██████
--    ░██    ░███████  ░███████ ░███████     ░██░██  ░██ ░░░░░░██
--    ░██    ░██░░░██  ░██░░░░  ░██░░░░      ░██░██  ░██  ███████
--    ░██    ░██  ░░██ ░██      ░██       ██ ░██░██  ░██ ██░░░░██
--    ░██    ░██   ░░██░████████░████████░██ ███░░██████░░████████
--    ░░     ░░     ░░ ░░░░░░░░ ░░░░░░░░ ░░ ░░░  ░░░░░░  ░░░░░░░░

local map = function(mode, lhs, rhs, opts)
  vim.keymap.set(mode, lhs, rhs, opts)
end

require("nvim-tree").setup({
  renderer = {
    icons = {
      glyphs ={
        git = {
          unstaged = "",
          staged = "✓",
          unmerged = "",
          renamed = "»",
          untracked = "",
          deleted = "✗",
          ignored = "◌",
        }
      }
    }
  }
})

map('n', '<leader>tr', ':NvimTreeToggle<cr>', {noremap = true})
map('n', '<leader>r', ':NvimTreeRefresh<cr>', {noremap = true})
