
#> switch:maps/survival/luxio_fish_fight/teleport_players
#
# @within	switch:maps/survival/luxio_fish_fight/main
#

data modify entity @s Pos set value [151026.5d, 127.5d, 151026.5d]
execute at @s in switch:game run tp @s ~ ~ ~
execute at @s run tp @a[tag=!detached] ~ ~ ~
execute if score #do_spreadplayers switch.data matches 1 run function switch:maps/survival/luxio_fish_fight/spread_players
scoreboard players reset #do_spreadplayers switch.data

