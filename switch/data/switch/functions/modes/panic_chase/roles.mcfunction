
# Role selection (1/5 chasseurs)
scoreboard players add #next_player_id switch.data 1
scoreboard players add #next_role switch.data 1
execute if score #next_role switch.data matches 1 run team join switch.temp.hunter @s
execute if score #next_role switch.data matches 1 if data storage switch:main {map:"arti_box"} run tp @s 119024.0 106 119023
execute if score #next_role switch.data matches 2.. run team join switch.temp.mouse @s
execute if score #next_role switch.data matches 2..3 if data storage switch:main {map:"arti_box"} run tp @s 119024.0 106 119004.0 0 0
execute if score #next_role switch.data matches 4..5 if data storage switch:main {map:"arti_box"} run tp @s 119024.0 106 119044.0 180 0
execute if score #next_role switch.data matches 5.. run scoreboard players set #next_role switch.data 0


