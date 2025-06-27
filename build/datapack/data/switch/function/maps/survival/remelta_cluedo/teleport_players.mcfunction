
#> switch:maps/survival/remelta_cluedo/teleport_players
#
# @within	switch:maps/survival/remelta_cluedo/main
#

data modify entity @s Pos set value [118027.5d, 108.5d, 118026.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/remelta_cluedo/spread_players
scoreboard players reset #do_spreadplayers switch.data

