let g:user_emmet_install_global = 0
let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\}
autocmd FileType html,css,javascriptreact,javascript EmmetInstall

let g:user_emmet_expandabbr_key='<Tab>'
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
