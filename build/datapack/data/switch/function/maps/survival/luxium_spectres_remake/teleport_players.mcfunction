
#> switch:maps/survival/luxium_spectres_remake/teleport_players
#
# @within	switch:maps/survival/luxium_spectres_remake/main
#

data modify entity @s Pos set value [142098.5d, 143.5d, 142069.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/luxium_spectres_remake/spread_players
scoreboard players reset #do_spreadplayers switch.data

