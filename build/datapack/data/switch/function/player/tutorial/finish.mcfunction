
#> switch:player/tutorial/finish
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/trigger/detach/main
#

team leave @s
scoreboard players reset @s switch.tutorial
advancement grant @s only switch:a_switch
execute in minecraft:overworld run tp @s 0 69.69 0
clear @s

function switch:stats/util_update_player

