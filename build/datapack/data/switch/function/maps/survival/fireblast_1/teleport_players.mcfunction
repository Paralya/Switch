
#> switch:maps/survival/fireblast_1/teleport_players
#
# @within	switch:maps/survival/fireblast_1/main
#

data modify entity @s Pos set value [163037.5d, 127.5d, 163037.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/fireblast_1/spread_players
scoreboard players reset #do_spreadplayers switch.data

