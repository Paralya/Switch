
#> switch:maps/survival/dark_forest_hills/teleport_players
#
# @within	switch:maps/survival/dark_forest_hills/main
#

data modify entity @s Pos set value [39076.5d, 138.5d, 39134.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/dark_forest_hills/spread_players
scoreboard players reset #do_spreadplayers switch.data

