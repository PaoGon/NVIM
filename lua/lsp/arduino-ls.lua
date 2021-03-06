     --██                 ██         ██                         ██        ████████
    --████               ░██        ░░                         ░██       ██░░░░░░ 
   --██░░██   ██████     ░██ ██   ██ ██ ███████   ██████       ░██      ░██       
  --██  ░░██ ░░██░░█  ██████░██  ░██░██░░██░░░██ ██░░░░██ █████░██      ░█████████
 --██████████ ░██ ░  ██░░░██░██  ░██░██ ░██  ░██░██   ░██░░░░░ ░██      ░░░░░░░░██
--░██░░░░░░██ ░██   ░██  ░██░██  ░██░██ ░██  ░██░██   ░██      ░██             ░██
--░██     ░██░███   ░░██████░░██████░██ ███  ░██░░██████       ░████████ ████████ 
--░░      ░░ ░░░     ░░░░░░  ░░░░░░ ░░ ░░░   ░░  ░░░░░░        ░░░░░░░░ ░░░░░░░░  

require'lspconfig'.arduino_language_server.setup({ 
    cmd =  { 
        -- Required
        "arduino-language-server",
        "-cli-config", "$HOME/.arduino15/arduino-cli.yaml",
        "-cli", "/usr/bin/arduino-cli",
        "-clangd", "/usr/bin/clangd",
        "-fqbn", "esp8266:esp8266:nodemcu"
    },
    --filetypes = {"arduino", "cpp"}
    filetypes = {"arduino"}
})
