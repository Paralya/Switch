
#> switch:maps/survival/spectre_original/teleport_players
#
# @within	switch:maps/survival/spectre_original/main
#

data modify entity @s Pos set value [2500.5d, 127.5d, 2500.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/spectre_original/spread_players
scoreboard players reset #do_spreadplayers switch.data
