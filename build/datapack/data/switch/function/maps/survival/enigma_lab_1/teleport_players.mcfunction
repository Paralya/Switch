
#> switch:maps/survival/enigma_lab_1/teleport_players
#
# @within	switch:maps/survival/enigma_lab_1/main
#

data modify entity @s Pos set value [53979.06.5d, 37.2.5d, 53993.02.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/enigma_lab_1/spread_players
scoreboard players reset #do_spreadplayers switch.data

