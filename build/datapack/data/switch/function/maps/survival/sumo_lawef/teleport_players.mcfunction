
#> switch:maps/survival/sumo_lawef/teleport_players
#
# @within	switch:maps/survival/sumo_lawef/main
#

data modify entity @s Pos set value [54999.5d, 112.5d, 55016.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/sumo_lawef/spread_players
scoreboard players reset #do_spreadplayers switch.data

