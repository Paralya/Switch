
#> switch:maps/survival/nuketown_no_barrier/teleport_players
#
# @within	switch:maps/survival/nuketown_no_barrier/main
#

data modify entity @s Pos set value [111109.5d, 111.5d, 111109.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/nuketown_no_barrier/spread_players
scoreboard players reset #do_spreadplayers switch.data
