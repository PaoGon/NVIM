 --██     ██ ████     ████ ██                              ██                
--░░██   ██ ░██░██   ██░██░██                             ░░  ██████         
 --░░██ ██  ░██░░██ ██ ░██░██              ██████ ███████  ██░██░░░██  ██████
  --░░███   ░██ ░░███  ░██░██             ██░░░░ ░░██░░░██░██░██  ░██ ██░░░░ 
   --██░██  ░██  ░░█   ░██░██            ░░█████  ░██  ░██░██░██████ ░░█████ 
  --██ ░░██ ░██   ░    ░██░██             ░░░░░██ ░██  ░██░██░██░░░   ░░░░░██
 --██   ░░██░██        ░██░████████ █████ ██████  ███  ░██░██░██      ██████ 
--░░     ░░ ░░         ░░ ░░░░░░░░ ░░░░░ ░░░░░░  ░░░   ░░ ░░ ░░      ░░░░░░  

local ls = require("luasnip")
ls.snippets = {
    xml = {
        ls.parser.parse_snippet('str', '<string name="$1">$2</string>'),
        ls.parser.parse_snippet('@s', '@string/$1'),
        ls.parser.parse_snippet('@id', '@+id/$1'),
        ls.parser.parse_snippet('txt', 'android:text="@string/$1"'),
        ls.parser.parse_snippet('txtSz', 'android:textSize="$1sp"$0'),
        ls.parser.parse_snippet('txtStyle', 'android:textSize="$1"$0'),
        ls.parser.parse_snippet('pad', 'android:textSize="$1dp"$0'),
        ls.parser.parse_snippet('marginT', 'android:layout_marginTop="$1dp"$0'),
        ls.parser.parse_snippet('marginS', 'android:layout_marginStart="$1dp"$0'),
        ls.parser.parse_snippet('marginB', 'android:layout_marginBottom="$1dp"$0'),
        ls.parser.parse_snippet('marginE', 'android:layout_marginEnd="$1dp"$0'),
        ls.parser.parse_snippet('height', 'android:height="$1dp"'),
        ls.parser.parse_snippet('height', 'android:width="$1dp"'),
        ls.parser.parse_snippet('txtView', '<TextView android:id="@+id/$1"\n android:layout_width="$2"\n android:layout_height="$3"/>\n$0'),
        ls.parser.parse_snippet('Button', '<Button android:id="@+id/$1"\n android:layout_width="$2"\n android:layout_height="$3"/>\n$0')
    }
}
