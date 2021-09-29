require'lspconfig'.arduino_language_server.setup({ 
    cmd =  { 
        -- Required
        "arduino-language-server",
        "-cli-config", "$HOME/.arduino15/arduino-cli.yaml"
    }
})
