
#> switch:maps/survival/jayl_dark_forest/teleport_players
#
# @within	switch:maps/survival/jayl_dark_forest/main
#

data modify entity @s Pos set value [34158.5d, 160.5d, 34107.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/jayl_dark_forest/spread_players
scoreboard players reset #do_spreadplayers switch.data

