
#> switch:maps/survival/ctf_plains_castles/teleport_players
#
# @within	switch:maps/survival/ctf_plains_castles/main
#

data modify entity @s Pos set value [146112.5d, 135.5d, 146171.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/ctf_plains_castles/spread_players
scoreboard players reset #do_spreadplayers switch.data

