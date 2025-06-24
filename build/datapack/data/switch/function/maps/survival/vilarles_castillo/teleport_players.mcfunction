
#> switch:maps/survival/vilarles_castillo/teleport_players
#
# @within	switch:maps/survival/vilarles_castillo/main
#

data modify entity @s Pos set value [52053.77.5d, 175.12.5d, 52166.47.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/vilarles_castillo/spread_players
scoreboard players reset #do_spreadplayers switch.data

