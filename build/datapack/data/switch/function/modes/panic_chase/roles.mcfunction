
#> switch:modes/panic_chase/roles
#
# @within	(public)
#

## Role selection (1/6 chasseurs)
scoreboard players add #next_player_id switch.data 1
scoreboard players add #next_role switch.data 1
execute if score #next_role switch.data matches 1 run team join switch.temp.hunter @s
execute if score #next_role switch.data matches 2.. run team join switch.temp.mouse @s

# Hunter tp
execute if score #next_role switch.data matches 1 if data storage switch:main {map:"arti_box"} run tp @s 10024.0 106 -3977
execute if score #next_role switch.data matches 1 if data storage switch:main {map:"nether_storm"} run tp @s 10034 120 4037
execute if score #next_role switch.data matches 1 if data storage switch:main {map:"yeti_in_panic"} run tp @s 4003 112 -11996

# Mouse tp
execute if score #next_role switch.data matches 2..3 if data storage switch:main {map:"arti_box"} run tp @s 10024.0 106 -3996.0 0 0
execute if score #next_role switch.data matches 4..6 if data storage switch:main {map:"arti_box"} run tp @s 10024.0 106 -3956.0 180 0
execute if score #next_role switch.data matches 2 if data storage switch:main {map:"nether_storm"} run tp @s 10023 120 4012 -45 0
execute if score #next_role switch.data matches 3 if data storage switch:main {map:"nether_storm"} run tp @s 10063 120 4035 90 0
execute if score #next_role switch.data matches 4 if data storage switch:main {map:"nether_storm"} run tp @s 10007 120 4032 -90 0
execute if score #next_role switch.data matches 5.. if data storage switch:main {map:"nether_storm"} run tp @s 10039.0 123 4066.0 180 0
execute if score #next_role switch.data matches 2.. if data storage switch:main {map:"yeti_in_panic"} run tp @s 4034 114 -11973 0 65

# Reset
execute if score #next_role switch.data matches 6.. run scoreboard players set #next_role switch.data 0

