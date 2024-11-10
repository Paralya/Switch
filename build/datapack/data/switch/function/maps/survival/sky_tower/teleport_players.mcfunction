
#> switch:maps/survival/sky_tower/teleport_players
#
# @within	switch:maps/survival/sky_tower/main
#

data modify entity @s Pos set value [80071.5d, 173.5d, 80071.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/sky_tower/spread_players
scoreboard players reset #do_spreadplayers switch.data

