
#> switch:maps/survival/jn_sakura_pvpbox/teleport_players
#
# @executed	as @e[type=marker,tag=switch.selected_map] & at @s
#
# @within	switch:maps/survival/jn_sakura_pvpbox/main [ as @e[type=marker,tag=switch.selected_map] & at @s ]
#

data modify entity @s Pos set value [135079.5d, 118.5d, 135085.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/jn_sakura_pvpbox/spread_players
scoreboard players reset #do_spreadplayers switch.data

