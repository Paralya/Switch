
#> switch:maps/survival/sheepwars_bonbons/teleport_players
#
# @within	switch:maps/survival/sheepwars_bonbons/main
#

data modify entity @s Pos set value [143044.5d, 151.5d, 143056.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/sheepwars_bonbons/spread_players
scoreboard players reset #do_spreadplayers switch.data

