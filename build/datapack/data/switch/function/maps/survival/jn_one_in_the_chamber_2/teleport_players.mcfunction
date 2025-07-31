
#> switch:maps/survival/jn_one_in_the_chamber_2/teleport_players
#
# @executed	as @e[type=marker,tag=switch.selected_map] & at @s
#
# @within	switch:maps/survival/jn_one_in_the_chamber_2/main [ as @e[type=marker,tag=switch.selected_map] & at @s ]
#

data modify entity @s Pos set value [138054.5d, 110.5d, 138013.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/jn_one_in_the_chamber_2/spread_players
scoreboard players reset #do_spreadplayers switch.data

