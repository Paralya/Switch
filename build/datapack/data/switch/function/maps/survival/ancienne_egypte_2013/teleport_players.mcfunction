
#> switch:maps/survival/ancienne_egypte_2013/teleport_players
#
# @executed	as @e[type=marker,tag=switch.selected_map] & at @s
#
# @within	switch:maps/survival/ancienne_egypte_2013/main [ as @e[type=marker,tag=switch.selected_map] & at @s ]
#

data modify entity @s Pos set value [128023.5d, 147.5d, 128030.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/ancienne_egypte_2013/spread_players
scoreboard players reset #do_spreadplayers switch.data

