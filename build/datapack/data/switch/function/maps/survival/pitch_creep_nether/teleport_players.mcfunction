
#> switch:maps/survival/pitch_creep_nether/teleport_players
#
# @within	switch:maps/survival/pitch_creep_nether/main
#

data modify entity @s Pos set value [120019.5d, 115.5d, 120010.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/pitch_creep_nether/spread_players
scoreboard players reset #do_spreadplayers switch.data

