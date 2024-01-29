
advancement revoke @s only switch:pitchout/hurt_entity
execute if score #engine_state switch.data matches 3 if data storage switch:main {current_game:"pitchout"} run scoreboard players add @s switch.temp.damages 1

