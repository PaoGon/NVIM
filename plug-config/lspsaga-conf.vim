" show hover doc
nnoremap <silent><leader>K <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
"
" scroll down hover doc or scroll in definition preview
nnoremap <silent><C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
" scroll up hover doc
nnoremap <silent><C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<cr>


" Code action
nnoremap <silent><leader>ba :Lspsaga code_action<CR>
vnoremap <silent><leader>ba :<C-U>Lspsaga range_code_action<CR>


" lsp provider to find the cursor word definition and reference
nnoremap <silent>gh <cmd>lua require'lspsaga.provider'.lsp_finder()<CR>
" or use command LspSagaFinder
nnoremap <silent>gh :Lspsaga lsp_finder<CR>


" Rename
nnoremap  <silent><leader>rn <cmd>lua require('lspsaga.rename').rename()<CR>
" or command
nnoremap <silent><leader>rn :Lspsaga rename<CR>
" close rename win use <C-c> in insert mode or `q` in noremal mode or `:q`


" Show signature help
nnoremap <silent><leader>sg <cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>

" Preview Definition
nnoremap <silent><leader>gd <cmd>lua require'lspsaga.provider'.preview_definition()<CR>


" Diagnostic and Show Diagnostics
nnoremap <silent><leader>cd <cmd>lua
nnoremap <silent> <leader>cd :Lspsaga show_line_diagnostics<CR>

" only show diagnostic if cursor is over the area
nnoremap <silent><leader>cc <cmd>lua

" jump diagnostic
nnoremap <silent><C-p> <cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_prev()<CR>
nnoremap <silent><C-n> <cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_next()<CR>
