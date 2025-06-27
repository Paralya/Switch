
#> switch:maps/survival/shoot_da_sheep/teleport_players
#
# @within	switch:maps/survival/shoot_da_sheep/main
#

data modify entity @s Pos set value [123012.5d, 114.5d, 123003.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/shoot_da_sheep/spread_players
scoreboard players reset #do_spreadplayers switch.data

