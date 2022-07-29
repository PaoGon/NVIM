local saga = require 'lspsaga'



saga.init_lsp_saga()

--saga.init_lsp_saga {
--    --debug = false,
--    --use_saga_diagnostic_sign = true,
--    --error_sign = '' ,
--    --warn_sign = '',
--    --hint_sign = '',
--    --infor_sign = ' ',
--    --border_style = "round",
--    --diagnostic_header_icon = "  ",
--    border_style = "rounded",
--    move_in_saga = { prev = '<C-p>',next = '<C-n>'},
--    diagnostic_header = {'', '', '', ' '},
--
--    code_action_icon = " ",
--    code_action_num_shortcut = true,
--    code_action_lightbulb = {
--        enable = true,
--        sign = true,
--        sign_priority = 20,
--        virtual_text = true,
--    },
--    --finder_definition_icon = "  ",
--    --finder_reference_icon = "  ",
--    max_preview_lines = 10,
--
--    finder_action_keys = {
--        open = "o",
--        vsplit = "s",
--        split = "i",
--        quit = "q",
--        scroll_down = "<C-f>",
--        scroll_up = "<C-b>",
--    },
--
--    code_action_keys = {
--        quit = "q",
--        exec = "<CR>",
--    },
--    rename_action_quit = "<C-c>",
--    definition_preview_icon = "  ",
--    --rename_prompt_prefix = "➤",
--    --diagnostic_prefix_format = "%d. ",
--}

--vim.keymap.set("n", "<c-f>", "<cmd>require('lspsaga.action').smart_scroll_with_saga(4)<CR>", {silent = true})
--vim.keymap.set("n", "<c-b>", "<cmd>require('lspsaga.action').smart_scroll_with_saga(-4)<CR>", {silent = true})

local action = require("lspsaga.action")
-- scroll down hover doc or scroll in definition preview
vim.keymap.set("n", "<C-f>", function()
    action.smart_scroll_with_saga(1)
end)
-- scroll up hover doc
vim.keymap.set("n", "<C-b>", function()
    action.smart_scroll_with_saga(-1)
end)

-- code action
vim.keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", { silent = true,noremap = true })
vim.keymap.set("v", "<leader>ca", "<cmd><C-U>Lspsaga range_code_action<CR>", { silent = true,noremap = true })

-- show hover doc
vim.keymap.set("n", "K", require("lspsaga.hover").render_hover_doc, { silent = true })
--
-- show signature help
vim.keymap.set("n", "<leader>K", require("lspsaga.signaturehelp").signature_help, { silent = true,noremap = true})

-- preview definition
vim.keymap.set("n", "<leader>gd", require("lspsaga.definition").preview_definition, { silent = true,noremap = true })
