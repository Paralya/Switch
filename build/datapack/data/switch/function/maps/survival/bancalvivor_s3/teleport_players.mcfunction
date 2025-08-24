
#> switch:maps/survival/bancalvivor_s3/teleport_players
#
# @executed	as @e[type=marker,tag=switch.selected_map] & at @s
#
# @within	switch:maps/survival/bancalvivor_s3/main [ as @e[type=marker,tag=switch.selected_map] & at @s ]
#

data modify entity @s Pos set value [38154.5d, 117.5d, 38121.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/bancalvivor_s3/spread_players
scoreboard players reset #do_spreadplayers switch.data

