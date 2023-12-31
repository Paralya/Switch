
advancement revoke @s only switch:gay_shooter/shot_player
execute if score #state switch.data matches 3 if data storage switch:main {current_game:"gay_shooter"} run scoreboard players add @s switch.temp.shot_player 1
execute if score #state switch.data matches 3 if data storage switch:main {current_game:"gay_shooter"} if score @s switch.temp.shot_player matches 42.. run advancement grant @s only switch:visible/22

