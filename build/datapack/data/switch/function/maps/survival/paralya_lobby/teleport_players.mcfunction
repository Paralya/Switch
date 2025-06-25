
#> switch:maps/survival/paralya_lobby/teleport_players
#
# @within	switch:maps/survival/paralya_lobby/main
#

data modify entity @s Pos set value [99142.87.5d, 193.64.5d, 99136.94.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/paralya_lobby/spread_players
scoreboard players reset #do_spreadplayers switch.data

