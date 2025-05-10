
#> switch:maps/survival/layers_2_teams/teleport_players
#
# @within	switch:maps/survival/layers_2_teams/main
#

data modify entity @s Pos set value [26990.28.5d, 107.53.5d, 27079.3.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/layers_2_teams/spread_players
scoreboard players reset #do_spreadplayers switch.data

