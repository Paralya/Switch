
#> switch:maps/survival/octogone_nether_ice/teleport_players
#
# @executed	as @e[type=marker,tag=switch.selected_map] & at @s
#
# @within	switch:maps/survival/octogone_nether_ice/main [ as @e[type=marker,tag=switch.selected_map] & at @s ]
#

data modify entity @s Pos set value [160031.5d, 132.5d, 160043.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/octogone_nether_ice/spread_players
scoreboard players reset #do_spreadplayers switch.data

