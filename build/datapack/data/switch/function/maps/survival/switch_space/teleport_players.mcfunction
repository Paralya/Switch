
#> switch:maps/survival/switch_space/teleport_players
#
# @executed	as @e[type=marker,tag=switch.selected_map] & at @s
#
# @within	switch:maps/survival/switch_space/main [ as @e[type=marker,tag=switch.selected_map] & at @s ]
#

data modify entity @s Pos set value [44.5d, 127.5d, 260.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/switch_space/spread_players
scoreboard players reset #do_spreadplayers switch.data

