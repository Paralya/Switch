
advancement revoke @s only switch:murder_mystery/entity_hurt_player
execute if score #state switch.data matches 3 if data storage switch:main {current_game:"murder_mystery"} run function switch:modes/murder_mystery/entity_hurt_player

