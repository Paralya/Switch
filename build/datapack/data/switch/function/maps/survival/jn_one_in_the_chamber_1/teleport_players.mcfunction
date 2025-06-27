
#> switch:maps/survival/jn_one_in_the_chamber_1/teleport_players
#
# @within	switch:maps/survival/jn_one_in_the_chamber_1/main
#

data modify entity @s Pos set value [137069.62.5d, 109.03.5d, 137074.15.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/jn_one_in_the_chamber_1/spread_players
scoreboard players reset #do_spreadplayers switch.data

