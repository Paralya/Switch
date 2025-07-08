
#> switch:player/trigger/coupdetat/display
#
# @within	switch:player/trigger/coupdetat/main
#

## For each of the game, print it in order
function switch:translations/player_trigger_coupdetat_display

# Create a list of all minigames (with clickable text)
scoreboard players set #alternate switch.data 0
data modify storage switch:temp tellraw set value []
data modify storage switch:temp copy set from storage switch:main minigames
execute if data storage switch:temp copy[0] run function switch:player/trigger/coupdetat/display_loop with storage switch:temp copy[0]

# Remove the last comma from the tellraw
data remove storage switch:temp tellraw[-1][-1]

# Display the text component
tellraw @s {"nbt":"tellraw","storage":"switch:temp","interpret":true}

