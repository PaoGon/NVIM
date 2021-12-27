local saga = require 'lspsaga'

local map = function(type, key, value)
    vim.api.nvim_buf_set_keymap(0,type,key,value,{noremap = true, silent = true});
end

saga.init_lsp_saga {
    debug = false,
    use_saga_diagnostic_sign = true,
    error_sign = '' ,
    warn_sign = '',
    hint_sign = '',
    infor_sign = ' ',
    border_style = "round",
    diagnostic_header_icon = "  ",
    code_action_icon = " ",

    code_action_prompt = {
        enable = true,
        sign = true,
        sign_priority = 40,
        virtual_text = true,
    },
    finder_definition_icon = "  ",
    finder_reference_icon = "  ",
    max_preview_lines = 10,

    finder_action_keys = {
        open = "o",
        vsplit = "s",
        split = "i",
        quit = "q",
        scroll_down = "<C-f>",
        scroll_up = "<C-b>",
    },

    code_action_keys = {
        quit = "q",
        exec = "<CR>",
    },
    rename_action_keys = {
        quit = "<C-c>",
        exec = "<CR>",
    },
    definition_preview_icon = "  ",
    border_style = "single",
    rename_prompt_prefix = "➤",
    server_filetype_map = {},
    diagnostic_prefix_format = "%d. ",
}

--
--- In lsp attach function
--local map = nvim_buf_set_keymap,
map("n", "rn", "<cmd>Lspsaga rename<CR>")
map("n", "gx", "<cmd>Lspsaga code_action<CR>")
map("x", "gx", ":<c-u>Lspsaga range_code_action<CR>")
map("n", "K",  "<cmd>Lspsaga hover_doc<CR>")
map("n", "go", "<cmd>Lspsaga show_line_diagnostics<CR>")
map("n", "<C-n>", "<cmd>Lspsaga diagnostic_jump_next<CR>")
map("n", "<C-p>", "<cmd>Lspsaga diagnostic_jump_prev<CR>")
map("n", "<C-u>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>")
map("n", "<C-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>")
