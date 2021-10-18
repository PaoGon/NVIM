let g:user_emmet_install_global = 0
"let g:user_emmet_settings = {
"\  'javascript' : {
"\      'extends' : 'jsx',
"\  },
"\}
autocmd FileType html,css,javascriptreact,javascript EmmetInstall

autocmd FileType html,css,javascriptreact,javascript imap <buffer><Tab> <plug>(emmet-expand-abbr)
autocmd FileType html lua require('cmp').setup.buffer { enabled = false }
