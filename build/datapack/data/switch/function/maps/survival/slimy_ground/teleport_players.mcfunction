
#> switch:maps/survival/slimy_ground/teleport_players
#
# @executed	as @e[type=marker,tag=switch.selected_map] & at @s
#
# @within	switch:maps/survival/slimy_ground/main [ as @e[type=marker,tag=switch.selected_map] & at @s ]
#

data modify entity @s Pos set value [60070.5d, 138.5d, 60006.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/slimy_ground/spread_players
scoreboard players reset #do_spreadplayers switch.data

