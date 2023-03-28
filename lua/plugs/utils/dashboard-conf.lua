local db = require("dashboard")

db.setup({
  theme = 'doom',
  config = {
    week_header = {
      enable = true
    },
    footer = {},
    center = {
      {
        icon = '  ',
        icon_hl = 'Title',
        desc = 'open last',
        desc_hl = 'Title',
        action = 'SessionLoad',
      },
      {
        icon = '  ',
        icon_hl = 'Title',
        desc = 'git_files',
        desc_hl = 'Title',
        action = 'Telescope git_files',
      },
      {
        icon = ' ',
        icon_hl = 'Title',
        desc = ' find_files',
        desc_hl = 'Title',
        action = 'Telescope find_files',
      },
      {
        icon = '  ',
        icon_hl = 'Title',
        desc = 'live grep',
        desc_hl = 'Title',
        action = 'Telescope live_grep',
      },
      {
        icon = '  ',
        icon_hl = 'Title',
        desc = 'new_file',
        desc_hl = 'Title',
        action = 'DashboardNewFile',
      }
    }
  }
})
