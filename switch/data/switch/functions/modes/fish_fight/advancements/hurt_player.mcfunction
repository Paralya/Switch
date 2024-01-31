
advancement revoke @s only switch:fish_fight/hurt_entity
execute if score #engine_state switch.data matches 3 if data storage switch:main {current_game:"fish_fight"} run scoreboard players add @s switch.temp.damages 1

