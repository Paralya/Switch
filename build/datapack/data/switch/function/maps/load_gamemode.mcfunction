
#> switch:maps/load_gamemode
#
# @within	switch:maps/load
#			switch:modes/kart_racer/give_items
#			switch:modes/race/give_items
#

# Kill map marker
kill @e[type=marker,tag=switch.selected_map]

# Maps that regenerate (gamemode survival, may be adventure):
function switch:maps/load_survival

# Maps that doesn't (always gamemode adventure):
function switch:maps/load_adventure

