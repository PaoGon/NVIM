local ls  = require("luasnip")


ls.snippets = {
    python = {
        ls.parser.parse_snippet("def", "def $1($2:$3)->$4:\n    $0"),
        ls.parser.parse_snippet("ifname", "def main():\n    $1\n    pass\n\n\nif name == 'main':\n    main()"),
        ls.parser.parse_snippet("for", "for $1 in range($2):\n    $0"),
        ls.parser.parse_snippet("while", "while $1:\n    $0"),
        ls.parser.parse_snippet("prt", "print($0)"),
        ls.parser.parse_snippet("brkpt", "breakpoint()"),
        ls.parser.parse_snippet("if", "if $1:\n    $0"),
        ls.parser.parse_snippet("elif", "elif $1:\n    $0"),
        ls.parser.parse_snippet("else", "else:\n    $0"),
        ls.parser.parse_snippet("list", "$1 = [$2,]"),
        ls.parser.parse_snippet("imp", "import $1 as $0"),
    }
}
