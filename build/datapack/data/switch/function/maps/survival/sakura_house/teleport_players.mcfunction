
#> switch:maps/survival/sakura_house/teleport_players
#
# @within	switch:maps/survival/sakura_house/main
#

data modify entity @s Pos set value [86072.5d, 117.5d, 86100.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/sakura_house/spread_players
scoreboard players reset #do_spreadplayers switch.data

