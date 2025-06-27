
#> switch:maps/survival/whity_lab/teleport_players
#
# @within	switch:maps/survival/whity_lab/main
#

data modify entity @s Pos set value [91081.5d, 133.5d, 91003.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/whity_lab/spread_players
scoreboard players reset #do_spreadplayers switch.data

