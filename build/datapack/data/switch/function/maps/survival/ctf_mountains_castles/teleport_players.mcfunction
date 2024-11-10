
#> switch:maps/survival/ctf_mountains_castles/teleport_players
#
# @within	switch:maps/survival/ctf_mountains_castles/main
#

data modify entity @s Pos set value [147181.5d, 180.5d, 147078.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/ctf_mountains_castles/spread_players
scoreboard players reset #do_spreadplayers switch.data

