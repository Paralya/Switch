
#> switch:maps/survival/sheepwars_colored_sheeps/teleport_players
#
# @within	switch:maps/survival/sheepwars_colored_sheeps/main
#

data modify entity @s Pos set value [154035.5d, 148.5d, 154064.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/sheepwars_colored_sheeps/spread_players
scoreboard players reset #do_spreadplayers switch.data

