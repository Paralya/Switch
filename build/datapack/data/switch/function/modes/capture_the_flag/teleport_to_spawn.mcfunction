
#> switch:modes/capture_the_flag/teleport_to_spawn
#
# @within	switch:modes/capture_the_flag/joined
#			switch:modes/capture_the_flag/score_point
#			switch:modes/capture_the_flag/teleport_to_death
#			switch:modes/capture_the_flag/roles/
#

## Maps spawn
# Map Plains Castles
execute if data storage switch:main {map:"operation_pigclaw"} run tp @s[team=switch.temp.blue] 36125 145 35919 -135 0
execute if data storage switch:main {map:"operation_pigclaw"} run tp @s[team=switch.temp.red] 35926 129 36081 45 0
execute if data storage switch:main {map:"ctf_plains_castles"} store result score #random switch.data run random value 0..1
execute if data storage switch:main {map:"ctf_plains_castles"} if score #random switch.data matches 0 run tp @s[team=switch.temp.red] 146325 129 146138 90 0
execute if data storage switch:main {map:"ctf_plains_castles"} if score #random switch.data matches 1 run tp @s[team=switch.temp.red] 146322 129 146090 90 0
execute if data storage switch:main {map:"ctf_plains_castles"} if score #random switch.data matches 0 run tp @s[team=switch.temp.blue] 146003 129 146138 -90 0
execute if data storage switch:main {map:"ctf_plains_castles"} if score #random switch.data matches 1 run tp @s[team=switch.temp.blue] 146003 129 146090 -90 0
execute if data storage switch:main {map:"ctf_mountains_castles"} run tp @s[team=switch.temp.blue] 147285 201 147135 180 0
execute if data storage switch:main {map:"ctf_mountains_castles"} run tp @s[team=switch.temp.red] 147076 201 147136 180 0
execute if data storage switch:main {map:"ctf_flowers"} run tp @s[team=switch.temp.blue] 148187 150 148031 90 0
execute if data storage switch:main {map:"ctf_flowers"} run tp @s[team=switch.temp.red] 148016 144 148072 -90 0
execute if data storage switch:main {map:"ctf_nether"} run tp @s[team=switch.temp.blue] 149100 149 149009 0 0
execute if data storage switch:main {map:"ctf_nether"} run tp @s[team=switch.temp.red] 149102 149 149341 180 0
execute if data storage switch:main {map:"ctf_forest_castles"} run tp @s[team=switch.temp.blue] 150050 130 150031 0 0
execute if data storage switch:main {map:"ctf_forest_castles"} run tp @s[team=switch.temp.red] 150050 130 150183 180 0

## Items to choose a class
tag @s remove switch.to_tp
clear @s
attribute @s jump_strength base set 0
effect give @s resistance infinite 250 true
effect give @s slowness infinite 250 true
effect give @s blindness infinite 250 true
effect give @s night_vision infinite 250 true
effect give @s darkness infinite 250 true
gamemode survival @s
scoreboard players set @s switch.temp.chosen_class 0
item replace entity @s hotbar.0 with diamond_chestplate[item_name={"text":"Tank","color":"red"},custom_data={switch:{class_item:1b,ctf_class:true}},consumable={consume_seconds:1024}]
item replace entity @s hotbar.2 with iron_sword[item_name={"text":"Warrior","color":"red"},custom_data={switch:{class_item:2b,ctf_class:true}},consumable={consume_seconds:1024}]
item replace entity @s hotbar.4 with arrow[item_name={"text":"Archer","color":"red"},custom_data={switch:{class_item:3b,ctf_class:true}},consumable={consume_seconds:1024}]
item replace entity @s hotbar.6 with tnt[item_name={"text":"Demolisher","color":"red"},custom_data={switch:{class_item:4b,ctf_class:true}},consumable={consume_seconds:1024}]
item replace entity @s hotbar.8 with glass_bottle[item_name={"text":"Chemister","color":"red"},custom_data={switch:{class_item:5b,ctf_class:true}},consumable={consume_seconds:1024}]

