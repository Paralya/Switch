
#> switch:maps/survival/abandoned_city_spawn_circle/teleport_players
#
# @executed	as @e[type=marker,tag=switch.selected_map] & at @s
#
# @within	switch:maps/survival/abandoned_city_spawn_circle/main [ as @e[type=marker,tag=switch.selected_map] & at @s ]
#

data modify entity @s Pos set value [43070.5d, 128.5d, 43063.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/abandoned_city_spawn_circle/spread_players
scoreboard players reset #do_spreadplayers switch.data

