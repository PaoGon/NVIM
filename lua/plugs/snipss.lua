local ls = require "luasnip"

ls.snippets = {
    all = {
		ls.parser.parse_snippet(
			"lspsyn",
			"Wow! This ${1:Stuff} really ${2:works. ${3:Well, a bit.}}"
		),
    }
}
