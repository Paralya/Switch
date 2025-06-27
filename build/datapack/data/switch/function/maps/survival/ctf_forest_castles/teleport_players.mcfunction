
#> switch:maps/survival/ctf_forest_castles/teleport_players
#
# @within	switch:maps/survival/ctf_forest_castles/main
#

data modify entity @s Pos set value [150019.35.5d, 133.9.5d, 150071.48.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/ctf_forest_castles/spread_players
scoreboard players reset #do_spreadplayers switch.data

