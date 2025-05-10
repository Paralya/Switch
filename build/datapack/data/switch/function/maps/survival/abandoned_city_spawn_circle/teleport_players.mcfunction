
#> switch:maps/survival/abandoned_city_spawn_circle/teleport_players
#
# @within	switch:maps/survival/abandoned_city_spawn_circle/main
#

data modify entity @s Pos set value [43000.5d, 116.5d, 43000.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/abandoned_city_spawn_circle/spread_players
scoreboard players reset #do_spreadplayers switch.data

