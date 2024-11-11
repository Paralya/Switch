
#> switch:modes/thunder_spear/give_and_teleport
#
# @within	switch:modes/thunder_spear/joined
#			switch:modes/thunder_spear/start
#

## Starter kit
# Effects
clear @s
effect clear @s
effect give @s speed infinite 1 true
effect give @s jump_boost infinite 4 true
effect give @s resistance 5 255 true
gamemode survival @s
scoreboard players add @s switch.temp.kills 0

# Give items
loot replace entity @s weapon.offhand loot grappling_hook:v1.2.1/items/normal_grappling_hook
scoreboard players set @s switch.temp.reload -60

# Teleport player
function switch:maps/spread_one_player

