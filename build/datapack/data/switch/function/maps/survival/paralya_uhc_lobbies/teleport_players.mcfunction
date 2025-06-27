
#> switch:maps/survival/paralya_uhc_lobbies/teleport_players
#
# @within	switch:maps/survival/paralya_uhc_lobbies/main
#

data modify entity @s Pos set value [98027.5d, 154.5d, 98060.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/paralya_uhc_lobbies/spread_players
scoreboard players reset #do_spreadplayers switch.data

