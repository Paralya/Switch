
#> switch:maps/survival/octogone_nether_ice/teleport_players
#
# @within	switch:maps/survival/octogone_nether_ice/main
#

data modify entity @s Pos set value [160040.5d, 136.5d, 160040.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/octogone_nether_ice/spread_players
scoreboard players reset #do_spreadplayers switch.data

