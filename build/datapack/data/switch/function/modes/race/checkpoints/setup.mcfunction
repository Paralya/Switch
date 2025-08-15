
#> switch:modes/race/checkpoints/setup
#
# @executed	as @e[type=marker,tag=switch.checkpoint]
#
# @within	switch:modes/race/post_load [ as @e[type=marker,tag=switch.checkpoint] ]
#

# Apply Checkpoint ID for Respawn
scoreboard players add #next_id switch.temp.id 1
scoreboard players operation @s switch.temp.id = #next_id switch.temp.id

execute store result score @s switch.checkpoint run data get entity @s data.cp
execute store result score @s switch.temp.dx run data get entity @s data.dx
execute store result score @s switch.temp.dy run data get entity @s data.dy
execute store result score @s switch.temp.dz run data get entity @s data.dz

