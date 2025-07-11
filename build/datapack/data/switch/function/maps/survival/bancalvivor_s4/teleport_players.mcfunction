
#> switch:maps/survival/bancalvivor_s4/teleport_players
#
# @within	switch:maps/survival/bancalvivor_s4/main
#

data modify entity @s Pos set value [38154.5d, 117.5d, 38121.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/bancalvivor_s4/spread_players
scoreboard players reset #do_spreadplayers switch.data

