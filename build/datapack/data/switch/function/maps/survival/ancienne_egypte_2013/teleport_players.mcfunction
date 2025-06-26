
#> switch:maps/survival/ancienne_egypte_2013/teleport_players
#
# @within	switch:maps/survival/ancienne_egypte_2013/main
#

data modify entity @s Pos set value [128022.53.5d, 146.68.5d, 128029.9.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/ancienne_egypte_2013/spread_players
scoreboard players reset #do_spreadplayers switch.data

