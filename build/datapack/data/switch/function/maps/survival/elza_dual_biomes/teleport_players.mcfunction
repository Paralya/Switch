
#> switch:maps/survival/elza_dual_biomes/teleport_players
#
# @within	switch:maps/survival/elza_dual_biomes/main
#

data modify entity @s Pos set value [155036.5d, 114.5d, 155033.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/elza_dual_biomes/spread_players
scoreboard players reset #do_spreadplayers switch.data

