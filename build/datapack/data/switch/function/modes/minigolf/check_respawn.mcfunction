
#> switch:modes/minigolf/check_respawn
#
# @executed	as @a[scores={switch.alive=1},predicate=golf_ball:has_vehicle] & at @s
#
# @within	switch:modes/minigolf/tick [ as @a[scores={switch.alive=1},predicate=golf_ball:has_vehicle] & at @s ]
#

execute if block ~ ~.5 ~ structure_void run scoreboard players add @s switch.temp.respawn 10
execute if block ~ ~1.5 ~ structure_void run scoreboard players add @s switch.temp.respawn 10
execute if block ~ ~.5 ~ lava run scoreboard players add @s switch.temp.respawn 10
execute if block ~ ~-.5 ~ lava run scoreboard players add @s switch.temp.respawn 10
execute if block ~ ~.5 ~ water run scoreboard players add @s switch.temp.respawn 2
execute if block ~ ~-.5 ~ water run scoreboard players add @s switch.temp.respawn 2

execute if score @s switch.temp.respawn matches 20.. run function golf_ball:respawn
execute if score @s switch.temp.respawn matches 20.. run scoreboard players reset @s switch.temp.respawn

