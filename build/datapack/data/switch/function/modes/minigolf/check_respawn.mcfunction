
#> switch:modes/minigolf/check_respawn
#
# @within	switch:modes/minigolf/tick
#

execute if block ~ ~.5 ~ structure_void run scoreboard players add @s switch.temp.respawn 10
execute if block ~ ~1.5 ~ structure_void run scoreboard players add @s switch.temp.respawn 10
execute if block ~ ~.5 ~ lava run scoreboard players add @s switch.temp.respawn 10
execute if block ~ ~-.5 ~ lava run scoreboard players add @s switch.temp.respawn 10
execute if block ~ ~.5 ~ water run scoreboard players add @s switch.temp.respawn 2
execute if block ~ ~-.5 ~ water run scoreboard players add @s switch.temp.respawn 2

execute if score @s switch.temp.respawn matches 20.. run function golf_ball:respawn
execute if score @s switch.temp.respawn matches 20.. run scoreboard players reset @s switch.temp.respawn

