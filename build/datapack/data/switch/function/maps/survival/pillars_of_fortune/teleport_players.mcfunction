
#> switch:maps/survival/pillars_of_fortune/teleport_players
#
# @within	switch:maps/survival/pillars_of_fortune/main
#

data modify entity @s Pos set value [161050.5d, 164.5d, 161050.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/pillars_of_fortune/spread_players
scoreboard players reset #do_spreadplayers switch.data

