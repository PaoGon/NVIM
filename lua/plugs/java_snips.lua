      --██                                                     ██                
     --░██                                                    ░░  ██████         
     --░██  ██████   ██    ██  ██████          ██████ ███████  ██░██░░░██  ██████
     --░██ ░░░░░░██ ░██   ░██ ░░░░░░██        ██░░░░ ░░██░░░██░██░██  ░██ ██░░░░ 
     --░██  ███████ ░░██ ░██   ███████       ░░█████  ░██  ░██░██░██████ ░░█████ 
 --██  ░██ ██░░░░██  ░░████   ██░░░░██        ░░░░░██ ░██  ░██░██░██░░░   ░░░░░██
--░░█████ ░░████████  ░░██   ░░████████ █████ ██████  ███  ░██░██░██      ██████ 
 --░░░░░   ░░░░░░░░    ░░     ░░░░░░░░ ░░░░░ ░░░░░░  ░░░   ░░ ░░ ░░      ░░░░░░  
 --
 --
 
 local ls = require("luasnip")
 ls.snippets = {
     java = {
        ls.parser.parse_snippet('findId', 'findViewById(R.id.$1)'),
        ls.parser.parse_snippet('pubFn', 'public $1 $2($3){\n\t$0\n}'),
        ls.parser.parse_snippet('privFn', 'private $1 $2($3){\n\t$0\n}'),
        ls.parser.parse_snippet('prtFn', 'protected $1 $2($3){\n\t$0\n}'),
        ls.parser.parse_snippet('if', 'if($1){\n\t$0\n}'),
        ls.parser.parse_snippet('ifelse', 'if($1){\n\t$0\n}else{\n\t\n}'),
        ls.parser.parse_snippet('ifnull', 'if($1 == null){\n\t$0\n}'),
        ls.parser.parse_snippet('ifnotnull', 'if($1 != null){\n\t$0\n}'),
     }
 }
