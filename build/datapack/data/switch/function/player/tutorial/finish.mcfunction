
#> switch:player/tutorial/finish
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/trigger/attach/main
#

team leave @s
scoreboard players reset @s switch.tutorial
advancement grant @s only switch:tutorial
execute in minecraft:overworld run tp @s 0 69.69 0
clear @s

function switch:stats/util_update_player

