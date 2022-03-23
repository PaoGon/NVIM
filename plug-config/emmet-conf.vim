 "████████ ████     ████ ████     ████ ████████ ██████████
"░██░░░░░ ░██░██   ██░██░██░██   ██░██░██░░░░░ ░░░░░██░░░ 
"░██      ░██░░██ ██ ░██░██░░██ ██ ░██░██          ░██    
"░███████ ░██ ░░███  ░██░██ ░░███  ░██░███████     ░██    
"░██░░░░  ░██  ░░█   ░██░██  ░░█   ░██░██░░░░      ░██    
"░██      ░██   ░    ░██░██   ░    ░██░██          ░██    
"░████████░██        ░██░██        ░██░████████    ░██    
"░░░░░░░░ ░░         ░░ ░░         ░░ ░░░░░░░░     ░░     

let g:user_emmet_install_global = 0
let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\  'xml': {
\       'extends': 'html',
\   },
\}
autocmd FileType html,xml,css,php,javascriptreact,javascript EmmetInstall

autocmd FileType html,xml,css,php,javascriptreact,javascript imap <buffer><C-c> <plug>(emmet-expand-abbr)
