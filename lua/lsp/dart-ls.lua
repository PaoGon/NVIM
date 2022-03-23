 --███████       ██     ███████   ██████████       ██        ████████
--░██░░░░██     ████   ░██░░░░██ ░░░░░██░░░       ░██       ██░░░░░░ 
--░██    ░██   ██░░██  ░██   ░██     ░██          ░██      ░██       
--░██    ░██  ██  ░░██ ░███████      ░██     █████░██      ░█████████
--░██    ░██ ██████████░██░░░██      ░██    ░░░░░ ░██      ░░░░░░░░██
--░██    ██ ░██░░░░░░██░██  ░░██     ░██          ░██             ░██
--░███████  ░██     ░██░██   ░░██    ░██          ░████████ ████████ 
--░░░░░░░   ░░      ░░ ░░     ░░     ░░           ░░░░░░░░ ░░░░░░░░  

require'lspconfig'.dartls.setup({
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
