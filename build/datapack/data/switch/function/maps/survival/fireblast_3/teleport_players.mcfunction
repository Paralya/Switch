
#> switch:maps/survival/fireblast_3/teleport_players
#
# @within	switch:maps/survival/fireblast_3/main
#

data modify entity @s Pos set value [165047.44.5d, 155.84.5d, 165052.22.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/fireblast_3/spread_players
scoreboard players reset #do_spreadplayers switch.data

