
#> switch:maps/survival/fireblast_2/teleport_players
#
# @within	switch:maps/survival/fireblast_2/main
#

data modify entity @s Pos set value [164022.16.5d, 153.99.5d, 164035.08.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/fireblast_2/spread_players
scoreboard players reset #do_spreadplayers switch.data

