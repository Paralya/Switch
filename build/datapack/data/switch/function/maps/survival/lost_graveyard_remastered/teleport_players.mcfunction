
#> switch:maps/survival/lost_graveyard_remastered/teleport_players
#
# @within	switch:maps/survival/lost_graveyard_remastered/main
#

data modify entity @s Pos set value [127030.5d, 119.5d, 127111.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/lost_graveyard_remastered/spread_players
scoreboard players reset #do_spreadplayers switch.data
