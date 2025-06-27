
#> switch:maps/survival/fireblast_pork/teleport_players
#
# @within	switch:maps/survival/fireblast_pork/main
#

data modify entity @s Pos set value [165047.5d, 156.5d, 165052.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/fireblast_pork/spread_players
scoreboard players reset #do_spreadplayers switch.data

