 "████     ████                           ██                         
"░██░██   ██░██           ██████  ██████ ░░            █████         
"░██░░██ ██ ░██  ██████  ░██░░░██░██░░░██ ██ ███████  ██░░░██  ██████
"░██ ░░███  ░██ ░░░░░░██ ░██  ░██░██  ░██░██░░██░░░██░██  ░██ ██░░░░ 
"░██  ░░█   ░██  ███████ ░██████ ░██████ ░██ ░██  ░██░░██████░░█████ 
"░██   ░    ░██ ██░░░░██ ░██░░░  ░██░░░  ░██ ░██  ░██ ░░░░░██ ░░░░░██
"░██        ░██░░████████░██     ░██     ░██ ███  ░██  █████  ██████ 
"░░         ░░  ░░░░░░░░ ░░      ░░      ░░ ░░░   ░░  ░░░░░  ░░░░░░  

"usee alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

"change to normal mode
:imap jk <Esc>
:imap kj <Esc>

" Easy CAPS
nnoremap <leader><c-u> viwU<Esc>

"better tabing
vnoremap < <gv
vnoremap > >gv

"better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" keeping things centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Undo break point
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap { {<c-g>u
inoremap ( (<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" Moving text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==
nnoremap <leader>j :m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
nnoremap <leader>k :m .-2<CR>==
