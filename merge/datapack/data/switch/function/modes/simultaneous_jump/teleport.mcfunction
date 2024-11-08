
# Utils
clear @s

# De a coudre
execute if data storage switch:main {map:"de_a_coudre_1"} run tp @s 29003 154 29000 90 0

# MLG a coudre
execute if data storage switch:main {map:"mlg_a_coudre_1"} run item replace entity @s hotbar.0 with water_bucket[can_place_on={blocks:["blue_concrete"]}]
execute if data storage switch:main {map:"mlg_a_coudre_1"} run tp @s 31011 200.69 31000 90 0

