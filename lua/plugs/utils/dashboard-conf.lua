local db = require('dashboard')

db.default_banner = {
' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
'',
}

db.hide_statusline  = false
db.hide_tabline  = false
db.custom_center = {
  {
    icon = '  ',
    desc = 'open last',
    action ='SessionLoad',
  },
  {
    icon = '  ',
    desc = 'git_files',
    action = 'Telescope git_files',
  },
  {
    icon = ' ',
    desc = 'find_files',
    action = 'Telescope find_files',
  },
  {
    icon = '  ',
    desc = 'live grep',
    action = 'Telescope live_grep',
  },
  {
    icon = '  ',
    desc = 'new_file',
    action = 'DashboardNewFile',
  },
}

