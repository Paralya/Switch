
#> switch:maps/survival/snk_tower/teleport_players
#
# @within	switch:maps/survival/snk_tower/main
#

data modify entity @s Pos set value [61042.5d, 144.5d, 61024.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/snk_tower/spread_players
scoreboard players reset #do_spreadplayers switch.data

