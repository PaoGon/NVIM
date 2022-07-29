-- ██       ██     ██     ██
--░██      ░██    ░██    ████
--░██      ░██    ░██   ██░░██
--░██      ░██    ░██  ██  ░░██
--░██      ░██    ░██ ██████████
--░██      ░██    ░██░██░░░░░░██
--░████████░░███████ ░██     ░██
--░░░░░░░░  ░░░░░░░  ░░      ░░

local lsp_config = require'lsp.lspconf'

require'lspconfig'.sumneko_lua.setup{
  on_attach = lsp_config.on_attach,
  capabilities = lsp_config.capabilities,
  flgas = lsp_config.flags
}
