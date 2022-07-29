--   ██████   ████████  ████████        ██
--  ██░░░░██ ██░░░░░░  ██░░░░░░        ░██
-- ██    ░░ ░██       ░██              ░██  ██████
--░██       ░█████████░█████████ █████ ░██ ██░░░░
--░██       ░░░░░░░░██░░░░░░░░██░░░░░  ░██░░█████
--░░██    ██       ░██       ░██       ░██ ░░░░░██
-- ░░██████  ████████  ████████        ███ ██████
--  ░░░░░░  ░░░░░░░░  ░░░░░░░░        ░░░ ░░░░░░

local lsp_config = require'lsp.lspconf'

require'lspconfig'.cssls.setup{
  on_attach = lsp_config.on_attach,
  capabilities = lsp_config.capabilities,
  flgas = lsp_config.flags
}

