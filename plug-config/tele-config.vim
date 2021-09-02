nnoremap <C-p> :Files<Cr>

" lsit files in current directory
nnoremap <leader>ff <cmd>Telescope find_files<cr>

" do a live grep
nnoremap <leader>fg <cmd>Telescope live_grep<cr>

" list open in buffers in current noevim buffers
nnoremap <leader>bf <cmd>Telescope buffers<cr>

nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" query previous open files
nnoremap <leader>of <cmd>Telescope oldfiles<cr>

" list all files and directory in current working directory
nnoremap <leader>fb <cmd>Telescope file_browser<cr>

" LSP commands
"nnoremap <leader>gr <cmd>Telescope lsp_references<cr> 
"nnoremap <leader>gd <cmd>Telescope lsp_defenitions<cr> 
"nnoremap <leader>Ca <cmd>Telescope lsp_code_actions<cr>
"nnoremap <leader>ds <cmd>Telescope lsp_document_symbols<cr>


" Git Pickers
nnoremap <leader>gc <cmd>Telescope git_commits<cr>
nnoremap <leader>gb <cmd>Telescope git_branches<cr>
nnoremap <leader>gs <cmd>Telescope git_status<cr>

