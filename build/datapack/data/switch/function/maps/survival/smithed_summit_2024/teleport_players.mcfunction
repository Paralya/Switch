
#> switch:maps/survival/smithed_summit_2024/teleport_players
#
# @within	switch:maps/survival/smithed_summit_2024/main
#

data modify entity @s Pos set value [66273.5d, 169.5d, 66354.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/smithed_summit_2024/spread_players
scoreboard players reset #do_spreadplayers switch.data

