
#> switch:maps/survival/paralya_lobby_noel/teleport_players
#
# @within	switch:maps/survival/paralya_lobby_noel/main
#

data modify entity @s Pos set value [40000.5d, 186.5d, 40000.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/paralya_lobby_noel/spread_players
scoreboard players reset #do_spreadplayers switch.data

