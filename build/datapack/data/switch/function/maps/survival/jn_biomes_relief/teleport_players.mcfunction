
#> switch:maps/survival/jn_biomes_relief/teleport_players
#
# @within	switch:maps/survival/jn_biomes_relief/main
#

data modify entity @s Pos set value [141137.5d, 167.5d, 141087.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/jn_biomes_relief/spread_players
scoreboard players reset #do_spreadplayers switch.data
