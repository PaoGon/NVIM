      --██ ███████   ██████████ ██        ████████
     --░██░██░░░░██ ░░░░░██░░░ ░██       ██░░░░░░
     --░██░██    ░██    ░██    ░██      ░██
     --░██░██    ░██    ░██    ░██      ░█████████
     --░██░██    ░██    ░██    ░██      ░░░░░░░░██
 --██  ░██░██    ██     ░██    ░██             ░██
--░░█████ ░███████      ░██    ░████████ ████████
 --░░░░░  ░░░░░░░       ░░     ░░░░░░░░ ░░░░░░░░


local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.documentationFormat = { 'markdown', 'plaintext' }
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.preselectSupport = true
capabilities.textDocument.completion.completionItem.insertReplaceSupport = true
capabilities.textDocument.completion.completionItem.labelDetailsSupport = true
capabilities.textDocument.completion.completionItem.deprecatedSupport = true
capabilities.textDocument.completion.completionItem.commitCharactersSupport = true
capabilities.textDocument.completion.completionItem.tagSupport = { valueSet = { 1 } }
capabilities.textDocument.completion.completionItem.resolveSupport = {
    properties = {
        'documentation',
        'detail',
        'additionalTextEdits',
    },
}

require('jdtls').start_or_attach({
    cmd = {'launch_jdtls'},
    capabilities= capabilities
})

local opts = {noremap=true, silent=true}
vim.api.nvim_set_keymap('n', '<silent>gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
vim.api.nvim_set_keymap('n','K','<cmd>lua vim.lsp.buf.hover()<CR>', opts)
vim.api.nvim_set_keymap('n', '<silent>gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
vim.api.nvim_set_keymap('n', '<silent><leader>gr', '<cmd>lua vim.lsp.buf.reference()<CR>', opts)
vim.api.nvim_set_keymap('n', '<silent>gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
vim.api.nvim_set_keymap('n', '<silent>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)

vim.api.nvim_set_keymap('n', '<leader>lA', '<cmd>lua require(\'jdtls\').code_action()<CR>', {silent = true})
