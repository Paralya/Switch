
#> switch:maps/survival/pitchout_1/teleport_players
#
# @within	switch:maps/survival/pitchout_1/main
#

data modify entity @s Pos set value [1081.19.5d, 117.69.5d, 1065.08.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/pitchout_1/spread_players
scoreboard players reset #do_spreadplayers switch.data

