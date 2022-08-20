
execute if score #index switch.data = #random switch.data run say set current_game
execute if score #index switch.data = #random switch.data run data modify storage switch:main current_game set from storage switch:main voted_games[0]

scoreboard players add #index switch.data 1
data remove storage switch:main voted_games[0]
execute if data storage switch:main voted_games[0] if data storage switch:main {current_game:""} run function switch:engine/launch_game/get_id

