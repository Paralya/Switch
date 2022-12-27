
advancement revoke @s only switch:spectres_game/hurt_entity
execute if data storage switch:main {current_game:"spectres_game"} run scoreboard players add @s switch.temp.damages 1

