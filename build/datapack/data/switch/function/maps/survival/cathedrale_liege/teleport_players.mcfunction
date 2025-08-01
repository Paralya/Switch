
#> switch:maps/survival/cathedrale_liege/teleport_players
#
# @executed	as @e[type=marker,tag=switch.selected_map] & at @s
#
# @within	switch:maps/survival/cathedrale_liege/main [ as @e[type=marker,tag=switch.selected_map] & at @s ]
#

data modify entity @s Pos set value [26034.5d, 122.5d, 26053.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/cathedrale_liege/spread_players
scoreboard players reset #do_spreadplayers switch.data

