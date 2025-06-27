
#> switch:maps/survival/sheepwars_plateforme/teleport_players
#
# @within	switch:maps/survival/sheepwars_plateforme/main
#

data modify entity @s Pos set value [144020.5d, 143.5d, 144060.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/sheepwars_plateforme/spread_players
scoreboard players reset #do_spreadplayers switch.data

