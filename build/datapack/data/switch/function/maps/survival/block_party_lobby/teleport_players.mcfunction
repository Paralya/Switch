
#> switch:maps/survival/block_party_lobby/teleport_players
#
# @within	switch:maps/survival/block_party_lobby/main
#

data modify entity @s Pos set value [131047.5d, 116.5d, 131074.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/block_party_lobby/spread_players
scoreboard players reset #do_spreadplayers switch.data

