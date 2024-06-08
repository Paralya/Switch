
# Summon temporary marker to keep player's position
summon marker ~ ~ ~ {Tags:["switch.swap_marker"]}

# Add temporary tag & remove to_swap
tag @s add switch.player_1
tag @s remove switch.to_swap

# Execute function for player 2
execute as @r[tag=switch.to_swap] run function switch:modes/pillars_of_fortune/swap/player_2

# Remove temporary tag since players have been swapped
tag @s remove switch.player_1

