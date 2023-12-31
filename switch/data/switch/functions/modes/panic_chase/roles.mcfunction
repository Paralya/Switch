
# Role selection (1/6 chasseurs)
scoreboard players add #next_player_id switch.data 1
scoreboard players add #next_role switch.data 1
execute if score #next_role switch.data matches 1 run team join switch.temp.hunter @s
execute if score #next_role switch.data matches 1 if data storage switch:main {map:"nether_storm"} run tp @s 122034 120 122037
execute if score #next_role switch.data matches 1 if data storage switch:main {map:"arti_box"} run tp @s 119024.0 106 119023
execute if score #next_role switch.data matches 2.. run team join switch.temp.mouse @s
execute if score #next_role switch.data matches 2 if data storage switch:main {map:"nether_storm"} run tp @s 122023 120 122012 -45 0
execute if score #next_role switch.data matches 3 if data storage switch:main {map:"nether_storm"} run tp @s 122063 120 122035 90 0
execute if score #next_role switch.data matches 4 if data storage switch:main {map:"nether_storm"} run tp @s 122007 120 122032 -90 0
execute if score #next_role switch.data matches 5..6 if data storage switch:main {map:"nether_storm"} run tp @s 122039.0 123 122066.0 180 0
execute if score #next_role switch.data matches 2..3 if data storage switch:main {map:"arti_box"} run tp @s 119024.0 106 119004.0 0 0
execute if score #next_role switch.data matches 4..6 if data storage switch:main {map:"arti_box"} run tp @s 119024.0 106 119044.0 180 0

# Reset
execute if score #next_role switch.data matches 6.. run scoreboard players set #next_role switch.data 0

