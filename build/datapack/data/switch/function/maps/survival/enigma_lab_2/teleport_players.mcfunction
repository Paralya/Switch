
#> switch:maps/survival/enigma_lab_2/teleport_players
#
# @within	switch:maps/survival/enigma_lab_2/main
#

data modify entity @s Pos set value [73038.5d, 114.5d, 73041.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/enigma_lab_2/spread_players
scoreboard players reset #do_spreadplayers switch.data

