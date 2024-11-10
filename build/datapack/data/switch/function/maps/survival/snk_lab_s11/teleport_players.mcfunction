
#> switch:maps/survival/snk_lab_s11/teleport_players
#
# @within	switch:maps/survival/snk_lab_s11/main
#

data modify entity @s Pos set value [67037.5d, 128.5d, 67037.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/snk_lab_s11/spread_players
scoreboard players reset #do_spreadplayers switch.data

