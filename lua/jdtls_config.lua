local M = {}
function M.setup()
  vim.cmd[[set softtabstop=4]]
  vim.cmd[[set shiftwidth=4]]
  vim.cmd[[set noexpandtab]]
  require('jdtls').start_or_attach({cmd = {'launch_jdtls.sh'}})
  -- Utility servers
  local map = function(type, key, value)
    vim.api.nvim_buf_set_keymap(0,type,key,value,{noremap = true, silent = true});

  end
 -- GOTO mappings
  map('n','gD','<cmd>lua vim.lsp.buf.declaration()<CR>')
  map('n','gd','<cmd>lua vim.lsp.buf.definition()<CR>')
  map('n','K','<cmd>lua vim.lsp.buf.hover()<CR>')
  map('n','gr','<cmd>lua vim.lsp.buf.references()<CR>')
  map('n','gs','<cmd>lua vim.lsp.buf.signature_help()<CR>')
  map('n','gi','<cmd>lua vim.lsp.buf.implementation()<CR>')
  map('n','<leader>gt','<cmd>lua vim.lsp.buf.type_definition()<CR>')
  map('n','<leader>gw','<cmd>lua vim.lsp.buf.document_symbol()<CR>')
  map('n','<leader>gW','<cmd>lua vim.lsp.buf.workspace_symbol()<CR>')

  -- ACTION mappings
  map('n','<leader>ah',  '<cmd>lua vim.lsp.buf.hover()<CR>')
  map('n','<leader>af', '<cmd>lua require"jdtls".code_action()<CR>')
  map('n','<leader>ar',  '<cmd>lua vim.lsp.buf.rename()<CR>')
  -- Few language severs support these three
  map('n','<leader>=',  '<cmd>lua vim.lsp.buf.formatting()<CR>')

  map('n', [[<leader>ai]], [[<Cmd>lua require'jdtls'.organize_imports()<CR>]])
  map('n', [[<leader>av]], [[<Cmd>lua require('jdtls').extract_variable()<CR>]])
  map('v', [[<leader>av]], [[<Esc><Cmd>lua require('jdtls').extract_variable(true)<CR>]])
  map('v', [[<leader>am]], [[<Esc><Cmd>lua require('jdtls').extract_method(true)<CR>]])
  map('n', [[<leader>aR]], [[<Cmd>lua require('jdtls').code_action(false, 'refactor')<CR>]])

end

return M
