
#> switch:maps/survival/arti_box/teleport_players
#
# @within	switch:maps/survival/arti_box/main
#

data modify entity @s Pos set value [119015.55.5d, 111.0.5d, 119037.61.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/arti_box/spread_players
scoreboard players reset #do_spreadplayers switch.data

