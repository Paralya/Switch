
advancement revoke @s only switch:gay_shooter/shot_taken
execute if score #engine_state switch.data matches 3 if data storage switch:main {current_game:"gay_shooter"} run scoreboard players add @s switch.temp.shots_taken 1
execute unless score #test_mode switch.data matches 1 if score #engine_state switch.data matches 3 if data storage switch:main {current_game:"gay_shooter"} if score @s switch.temp.shots_taken matches 10.. run advancement grant @s only switch:visible/69

