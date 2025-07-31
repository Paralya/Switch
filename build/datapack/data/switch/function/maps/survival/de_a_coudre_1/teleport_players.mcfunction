
#> switch:maps/survival/de_a_coudre_1/teleport_players
#
# @executed	as @e[type=marker,tag=switch.selected_map] & at @s
#
# @within	switch:maps/survival/de_a_coudre_1/main [ as @e[type=marker,tag=switch.selected_map] & at @s ]
#

data modify entity @s Pos set value [29043.5d, 174.5d, 29036.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/de_a_coudre_1/spread_players
scoreboard players reset #do_spreadplayers switch.data

