-- ███████  ██    ██        ██         ██        ██
--░██░░░░██░░██  ██        ░░   █████ ░██       ░██
--░██   ░██ ░░████   ██████ ██ ██░░░██░██      ██████
--░███████   ░░██   ░░██░░█░██░██  ░██░██████ ░░░██░
--░██░░░░     ░██    ░██ ░ ░██░░██████░██░░░██  ░██
--░██         ░██    ░██   ░██ ░░░░░██░██  ░██  ░██
--░██         ░██   ░███   ░██  █████ ░██  ░██  ░░██
--░░          ░░    ░░░    ░░  ░░░░░  ░░   ░░    ░░

local lsp_config = require'lsp.lsp-conf'

require'lspconfig'.pyright.setup{
  on_attach = lsp_config.on_attach,
  capabilities = lsp_config.capabilities,
  flgas = lsp_config.flags
}
