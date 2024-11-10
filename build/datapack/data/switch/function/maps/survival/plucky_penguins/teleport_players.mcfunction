
#> switch:maps/survival/plucky_penguins/teleport_players
#
# @within	switch:maps/survival/plucky_penguins/main
#

data modify entity @s Pos set value [68012.5d, 116.5d, 68015.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/plucky_penguins/spread_players
scoreboard players reset #do_spreadplayers switch.data

