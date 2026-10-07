
#> switch:maps/load_gamemode
#
# @within	switch:modes/race/give_items
#			switch:maps/load
#

# Kill map marker
kill @e[type=marker,tag=switch.selected_map]

# Load the selected map (gamemode survival, may be adventure)
function switch:maps/load_survival

