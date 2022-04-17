 --██       ██     ██     ██                      ██
--░██      ░██    ░██    ████                    ░░  ██████
--░██      ░██    ░██   ██░░██    ██████ ███████  ██░██░░░██  ██████
--░██      ░██    ░██  ██  ░░██  ██░░░░ ░░██░░░██░██░██  ░██ ██░░░░
--░██      ░██    ░██ ██████████░░█████  ░██  ░██░██░██████ ░░█████
--░██      ░██    ░██░██░░░░░░██ ░░░░░██ ░██  ░██░██░██░░░   ░░░░░██
--░████████░░███████ ░██     ░██ ██████  ███  ░██░██░██      ██████
--░░░░░░░░  ░░░░░░░  ░░      ░░ ░░░░░░  ░░░   ░░ ░░ ░░      ░░░░░░

local ls  = require("luasnip")
--local types = require("luasnip.util.types")
--local s = ls.snippet
--local sn = ls.snippet_node
--local t = ls.text_node
--local i = ls.insert_node
--local f = ls.function_node
--local c = ls.choice_node
--local d = ls.dynamic_node
--local r = ls.restore_node
--local l = require("luasnip.extras").lambda
--local rep = require("luasnip.extras").rep
--local p = require("luasnip.extras").partial
--local m = require("luasnip.extras").match
--local n = require("luasnip.extras").nonempty
--local dl = require("luasnip.extras").dynamic_lambda
--local fmt = require("luasnip.extras.fmt").fmt
--local fmta = require("luasnip.extras.fmt").fmta
--local types = require("luasnip.util.types")
--local conds = require("luasnip.extras.expand_conditions")

ls.config.set_config({

    history = true,

    updateevents = "TextChanged, TextChangedI",

    --Autosnippets
    enable_autosnippets = true,

	--ext_opts = {
		--[types.choiceNode] = {
			--active = {
				--virt_text = { { "choiceNode", "Comment" } },
			--},
		--},
	--},
	---- treesitter-hl has 100, use something higher (default is 200).
	--ext_base_prio = 300,
	---- minimal increase in priority.
	--ext_prio_increase = 1,
})

vim.keymap.set({"i", "s"}, "<C-s>", function()
    if ls.expand_or_jumpable() then
        ls.expand_or_jump()
    end
end, {silent= true})


vim.keymap.set({"i", "s"}, "<C-j>", function()
    if ls.jumpable(-1) then
        ls.jump(-1)
    end
end, {silent = true})


vim.keymap.set("i", "<C-l>",function()
    if ls.choice_active() then
        ls.change_choice(1)
    end
end, {silent = true})

vim.keymap.set("n", "<leader><leader>s", "<cmd>source ~/.config/nvim/lua/plugs/luasnip.lua<CR>")

-- autotriggered snippets have to be defined in a separate table, luasnip.autosnippets.
--ls.autosnippets = {
	--all = {
		--s("autotrigger", {
			--t("autosnippet"),
		--}),
	--},
--}
