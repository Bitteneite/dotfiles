print_center() {
	
	local text=$1
	# Text to be centered:
	echo "$text" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
}



print_center "\e[1;37m"
print_center "       ▄▄▄▄▄▄▄▄▄▄▄      ▄▄▄▄▄▄▄▄▄▄▄▄▄▄   ▄▄▄▄▄▄   ▄▄▄▄▄▄     "
print_center "        ▄▄▄▄▄▄▄▄▄      ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄   ▄▄▄▄▄▄    ▄▄▄▄      "
print_center "        ▄▄▄▄ ▄▄▄▄      ▄▄▄▄▄              ▄▄▄▄    ▄▄▄▄       "
print_center "       ▄▄▄▄   ▄▄▄▄        ▄▄▄▄▄▄          ▄▄▄▄▄▄▄▄▄▄▄        "
print_center "       ▄▄▄▄▄▄▄▄▄▄▄           ▄▄▄▄▄▄       ▄▄▄▄▄▄▄▄▄▄▄        "
print_center "      ▄▄▄▄▄▄▄▄▄▄▄▄▄              ▄▄▄▄▄    ▄▄▄▄    ▄▄▄▄       "
print_center "      ▄▄▄▄     ▄▄▄▄    ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄   ▄▄▄▄▄▄    ▄▄▄▄      "
print_center "     ▄▄▄▄▄▄   ▄▄▄▄▄▄   ▄▄▄▄▄▄▄▄▄▄▄▄▄▄    ▄▄▄▄▄▄   ▄▄▄▄▄▄     "
print_center
print_center "                      Personal Computer                      "
print_center "\e[0m"
print_center "╔═══════════════════════════════════════════════════════════╗"
print_center "║                   ASK Operating System/2                  ║"
print_center "║                        Version 1.00                       ║"
print_center "╚═══════════════════════════════════════════════════════════╝"
print_center       
print_center "      (C) Copyright ASK Corp. 1981. All rights reserved.     "
print_center
