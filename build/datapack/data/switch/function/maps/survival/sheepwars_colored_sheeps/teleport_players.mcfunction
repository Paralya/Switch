
#> switch:maps/survival/sheepwars_colored_sheeps/teleport_players
#
# @executed	as @e[type=marker,tag=switch.selected_map] & at @s
#
# @within	switch:maps/survival/sheepwars_colored_sheeps/main [ as @e[type=marker,tag=switch.selected_map] & at @s ]
#

data modify entity @s Pos set value [154062.5d, 149.5d, 154018.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/sheepwars_colored_sheeps/spread_players
scoreboard players reset #do_spreadplayers switch.data

