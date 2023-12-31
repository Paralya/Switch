
advancement revoke @s only switch:traitors_game/killed_ninja
execute if data storage switch:main {current_game:"traitors_game"} run scoreboard players add @s switch.temp.killed_ninja 1
execute if data storage switch:main {current_game:"traitors_game"} if score @s switch.temp.killed_ninja matches 2 run advancement grant @s only switch:visible/32

