
#> switch:maps/survival/lava_castle/teleport_players
#
# @within	switch:maps/survival/lava_castle/main
#

data modify entity @s Pos set value [83032.5d, 132.5d, 83039.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/lava_castle/spread_players
scoreboard players reset #do_spreadplayers switch.data

