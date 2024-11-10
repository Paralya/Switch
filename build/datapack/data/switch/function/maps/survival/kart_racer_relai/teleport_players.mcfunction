
#> switch:maps/survival/kart_racer_relai/teleport_players
#
# @within	switch:maps/survival/kart_racer_relai/main
#

data modify entity @s Pos set value [64037.5d, 112.5d, 64052.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/kart_racer_relai/spread_players
scoreboard players reset #do_spreadplayers switch.data

