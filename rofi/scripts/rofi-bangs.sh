declare -A LABELS
declare -A COMMANDS

###
# List of defined 'bangs'

# launch programs
COMMANDS["apps"]="rofi -show run"
LABELS["apps"]=""

# open bookmarks
#COMMANDS["bookmarks"]="~/.config/rofi/scripts/bookmarks.sh"
#LABELS["bookmarks"]=""

# search local files
COMMANDS["locate"]="~/.config/rofi/scripts/locate.sh"
LABELS["locate"]=""

# open custom web searches
COMMANDS["websearch"]="~/.config/rofi/scripts/websearch.sh"
LABELS["websearch"]=""

# show clipboard history
# source: https://bitbucket.org/pandozer/rofi-clipboard-manager/overview
COMMANDS["clipboard"]='rofi -modi "clipboard:greenclip print" -show clipboard'
LABELS["clipboard"]=""

################################################################################
# do not edit below
################################################################################
##
# Generate menu
##
function print_menu()
{
    for key in ${!LABELS[@]}
    do
  echo "$key    ${LABELS}"
     #   echo "$key    ${LABELS[$key]}"
     # my top version just shows the first field in labels row, not two words side by side
    done
}
##
# Show rofi.
##
function start()
{
    print_menu | sort | rofi -dmenu "Launch: " -combi run
    #echo -e "Option #1\nOption #2\nOption #3" | rofi -dmenu
    #print_menu | sort | rofi -dmenu -mesg ">>> launch your collection of rofi scripts" -i -p "rofi-bangs: "

}


# Run it
value="$(start)"

# Split input.
# grab upto first space.
choice=${value%%\ *}
# graph remainder, minus space.
input=${value:$((${#choice}+1))}

##
# Cancelled? bail out
##
if test -z ${choice}
then
    exit
fi

# check if choice exists
if test ${COMMANDS[$choice]+isset}
then
    # Execute the choice
    eval echo "Executing: ${COMMANDS[$choice]}"
    eval ${COMMANDS[$choice]}
else
 eval  $choice | rofi
 # prefer my above so I can use this same script to also launch apps like geany or leafpad etc (DK) 
 #   echo "Unknown command: ${choice}" | rofi -dmenu -p "error"
fi
