
#> switch:maps/survival/pitchout_halloween/teleport_players
#
# @within	switch:maps/survival/pitchout_halloween/main
#

data modify entity @s Pos set value [125042.5d, 119.5d, 125102.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/pitchout_halloween/spread_players
scoreboard players reset #do_spreadplayers switch.data

