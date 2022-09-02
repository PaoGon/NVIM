-- ████████ ████     ████ ████     ████ ████████ ██████████
--░██░░░░░ ░██░██   ██░██░██░██   ██░██░██░░░░░ ░░░░░██░░░
--░██      ░██░░██ ██ ░██░██░░██ ██ ░██░██          ░██
--░███████ ░██ ░░███  ░██░██ ░░███  ░██░███████     ░██
--░██░░░░  ░██  ░░█   ░██░██  ░░█   ░██░██░░░░      ░██
--░██      ░██   ░    ░██░██   ░    ░██░██          ░██
--░████████░██        ░██░██        ░██░████████    ░██
--░░░░░░░░ ░░         ░░ ░░         ░░ ░░░░░░░░     ░░


vim.cmd[[ let g:user_emmet_install_global = 0 ]]
vim.cmd[[let g:user_emmet_settings = {
  \  'javascript' : {
  \      'extends' : 'jsx',
  \  },
  \  'xml': {
  \       'extends': 'html',
  \   },
  \}
]]

vim.cmd[[autocmd FileType html,xml,markdown,css,php,javascriptreact,javascript,typescript,typescriptreact EmmetInstall]]
vim.cmd[[autocmd FileType html,xml,markdown,css,php,javascriptreact,javascript,typescript,typescriptreact imap <buffer><C-c> <plug>(emmet-expand-abbr)]]
