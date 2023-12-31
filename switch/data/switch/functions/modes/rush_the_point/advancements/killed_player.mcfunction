
advancement revoke @s only switch:rush_the_point/killed_player
execute if score #state switch.data matches 3 if data storage switch:main {current_game:"rush_the_point"} run function switch:modes/rush_the_point/advancements/killed_player_confirm

