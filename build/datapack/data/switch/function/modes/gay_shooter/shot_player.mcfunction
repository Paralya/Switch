
#> switch:modes/gay_shooter/shot_player
#
# @executed	as the player & at current position
#
# @within	advancement switch:gay_shooter/shot_player
#

advancement revoke @s only switch:gay_shooter/shot_player
execute if score #engine_state switch.data matches 3 if data storage switch:main {current_game:"gay_shooter"} run scoreboard players add @s switch.temp.shot_player 1
execute unless score #test_mode switch.data matches 1 if score #engine_state switch.data matches 3 if data storage switch:main {current_game:"gay_shooter"} if score @s switch.temp.shot_player matches 42.. run advancement grant @s only switch:visible/22

