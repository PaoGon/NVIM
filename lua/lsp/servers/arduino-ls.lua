     --██                 ██         ██                         ██        ████████
    --████               ░██        ░░                         ░██       ██░░░░░░
   --██░░██   ██████     ░██ ██   ██ ██ ███████   ██████       ░██      ░██
  --██  ░░██ ░░██░░█  ██████░██  ░██░██░░██░░░██ ██░░░░██ █████░██      ░█████████
 --██████████ ░██ ░  ██░░░██░██  ░██░██ ░██  ░██░██   ░██░░░░░ ░██      ░░░░░░░░██
--░██░░░░░░██ ░██   ░██  ░██░██  ░██░██ ░██  ░██░██   ░██      ░██             ░██
--░██     ░██░███   ░░██████░░██████░██ ███  ░██░░██████       ░████████ ████████
--░░      ░░ ░░░     ░░░░░░  ░░░░░░ ░░ ░░░   ░░  ░░░░░░        ░░░░░░░░ ░░░░░░░░

local lsp_config = require'lsp.lsp-conf'

require'lspconfig'.arduino_language_server.setup({
  on_attach = lsp_config.on_attach,
  flgas = lsp_config.flags,
  capabilities = lsp_config.capabilities,
  cmd =  {
      -- Required
      "arduino-language-server",
      "-cli-config", "$HOME/.arduino15/arduino-cli.yaml",
      "-cli", "/usr/bin/arduino-cli",
      "-clangd", "/usr/bin/clangd",
      --"-fqbn", "esp32:esp32:lolin32"
      "-fqbn", "esp8266:esp8266:nodemcu"
  },
  filetypes = {"arduino"}
})
--filetypes = {"arduino", "cpp"}
--"-fqbn", "esp32:esp32:lolin32"
