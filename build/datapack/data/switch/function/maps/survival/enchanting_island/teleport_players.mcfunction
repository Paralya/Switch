
#> switch:maps/survival/enchanting_island/teleport_players
#
# @within	switch:maps/survival/enchanting_island/main
#

data modify entity @s Pos set value [7061.03.5d, 139.35.5d, 7015.43.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/enchanting_island/spread_players
scoreboard players reset #do_spreadplayers switch.data

