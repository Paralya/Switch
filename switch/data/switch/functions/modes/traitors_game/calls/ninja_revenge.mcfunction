
advancement revoke @s only switch:traitors_game/ninja_revenge
execute if data storage switch:main {current_game:"traitors_game"} if score @s switch.temp.role matches 3..4 run advancement grant @s only switch:visible/41

