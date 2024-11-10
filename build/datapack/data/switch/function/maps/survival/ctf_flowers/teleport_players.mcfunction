
#> switch:maps/survival/ctf_flowers/teleport_players
#
# @within	switch:maps/survival/ctf_flowers/main
#

data modify entity @s Pos set value [148047.5d, 118.5d, 14804.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/ctf_flowers/spread_players
scoreboard players reset #do_spreadplayers switch.data

