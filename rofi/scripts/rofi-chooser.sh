declare -a ORDERS
declare -A COMMANDS

###
# Define your choices using an associative array COMMANDS with the command or 
# script location. To keep a specific ordering use the array ORDERS
#

# Use greenclip to show clipboard history
COMMANDS["clipboard"]='greenclip print'
ORDERS+=('clipboard')

# search local files
COMMANDS["locate"]="~/.config/rofi/scripts/locate.sh"
ORDERS+=('locate')

# open custom web searches
COMMANDS["websearch"]="~/.config/rofi/scripts/websearch.sh"
ORDERS+=('websearch')

ROFI_START_LAUNCHER='rofi -modi "run'
ROFI_END_LAUNCHER=',ssh,window" -show run'

# This for loop loops over ORDERS by key (0, 1, 2...) and assigns the values to
# $key. The loop body then builds a string using order[key]:command[order[key]
# This forces the script to maintain the order of the commands you defined
for key in ${!ORDERS[@]}
do
    ROFI_START_LAUNCHER="$ROFI_START_LAUNCHER,${ORDERS[$key]}:${COMMANDS[${ORDERS[$key]}]}"
done

# The final script is launched
eval $ROFI_START_LAUNCHER$ROFI_END_LAUNCHER
