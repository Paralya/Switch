
#> switch:maps/survival/mlg_a_coudre_1/teleport_players
#
# @within	switch:maps/survival/mlg_a_coudre_1/main
#

data modify entity @s Pos set value [31089.5d, 218.5d, 31063.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/mlg_a_coudre_1/spread_players
scoreboard players reset #do_spreadplayers switch.data

