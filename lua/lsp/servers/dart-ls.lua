 --███████       ██     ███████   ██████████       ██        ████████
--░██░░░░██     ████   ░██░░░░██ ░░░░░██░░░       ░██       ██░░░░░░
--░██    ░██   ██░░██  ░██   ░██     ░██          ░██      ░██
--░██    ░██  ██  ░░██ ░███████      ░██     █████░██      ░█████████
--░██    ░██ ██████████░██░░░██      ░██    ░░░░░ ░██      ░░░░░░░░██
--░██    ██ ░██░░░░░░██░██  ░░██     ░██          ░██             ░██
--░███████  ░██     ░██░██   ░░██    ░██          ░████████ ████████
--░░░░░░░   ░░      ░░ ░░     ░░     ░░           ░░░░░░░░ ░░░░░░░░

local lsp_config = require'lsp.lspconf'

require'lspconfig'.dartls.setup({
  on_attach = lsp_config.on_attach,
  flgas = lsp_config.flags,
  capabilities = lsp_config.capabilities,
  cmd = {
      'dart',
      '/home/gon/snap/flutter/common/flutter/bin/cache/dart-sdk/bin/snapshots/analysis_server.dart.snapshot',
      '--lsp'
  },
  filetypes = { "dart" },
  init_options = {
      closingLabels = false,
      flutterOutline = false,
      lineLength = 120,
      onlyAnalyzeProjectsWithOpenFiles = false,
      outline = false,
      suggestFromUnimportedLibraries = true

  }
})
