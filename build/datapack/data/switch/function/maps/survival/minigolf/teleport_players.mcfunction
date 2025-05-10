
#> switch:maps/survival/minigolf/teleport_players
#
# @within	switch:maps/survival/minigolf/main
#

data modify entity @s Pos set value [124083.5d, 137.5d, 124070.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/minigolf/spread_players
scoreboard players reset #do_spreadplayers switch.data

