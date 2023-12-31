
advancement revoke @s only switch:infected/entity_hurt_player
execute if score #state switch.data matches 3 if data storage switch:main {current_game:"infected"} run function switch:modes/infected/advancements/entity_hurt_player_confirm

