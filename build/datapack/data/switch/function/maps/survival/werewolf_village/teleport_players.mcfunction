
#> switch:maps/survival/werewolf_village/teleport_players
#
# @within	switch:maps/survival/werewolf_village/main
#

data modify entity @s Pos set value [93061.5d, 115.5d, 93061.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/werewolf_village/spread_players
scoreboard players reset #do_spreadplayers switch.data

