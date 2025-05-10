
#> switch:maps/survival/pitch_creep_1/teleport_players
#
# @within	switch:maps/survival/pitch_creep_1/main
#

data modify entity @s Pos set value [3520.0.5d, 100.0.5d, 3520.0.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/pitch_creep_1/spread_players
scoreboard players reset #do_spreadplayers switch.data

