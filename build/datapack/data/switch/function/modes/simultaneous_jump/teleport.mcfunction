
#> switch:modes/simultaneous_jump/teleport
#
# @within	switch:modes/simultaneous_jump/death
#			switch:modes/simultaneous_jump/done
#			switch:modes/simultaneous_jump/joined
#			switch:modes/simultaneous_jump/start [ as @a[tag=!detached] ]
#

# Utils
clear @s

# De a coudre
execute if data storage switch:main {map:"de_a_coudre_1"} run tp @s 4034 162 -5977 90 0

# MLG a coudre
execute if data storage switch:main {map:"mlg_a_coudre_1"} run item replace entity @s hotbar.0 with water_bucket[can_place_on={blocks:["blue_concrete"]}]
execute if data storage switch:main {map:"mlg_a_coudre_1"} run item replace entity @s hotbar.1 with water_bucket[can_place_on={blocks:["blue_concrete"]}]
execute if data storage switch:main {map:"mlg_a_coudre_1"} run item replace entity @s hotbar.2 with water_bucket[can_place_on={blocks:["blue_concrete"]}]
execute if data storage switch:main {map:"mlg_a_coudre_1"} run item replace entity @s hotbar.3 with water_bucket[can_place_on={blocks:["blue_concrete"]}]
execute if data storage switch:main {map:"mlg_a_coudre_1"} run item replace entity @s hotbar.4 with water_bucket[can_place_on={blocks:["blue_concrete"]}]
execute if data storage switch:main {map:"mlg_a_coudre_1"} run item replace entity @s hotbar.5 with water_bucket[can_place_on={blocks:["blue_concrete"]}]
execute if data storage switch:main {map:"mlg_a_coudre_1"} run item replace entity @s hotbar.6 with water_bucket[can_place_on={blocks:["blue_concrete"]}]
execute if data storage switch:main {map:"mlg_a_coudre_1"} run item replace entity @s hotbar.7 with water_bucket[can_place_on={blocks:["blue_concrete"]}]
execute if data storage switch:main {map:"mlg_a_coudre_1"} run item replace entity @s hotbar.8 with water_bucket[can_place_on={blocks:["blue_concrete"]}]
execute if data storage switch:main {map:"mlg_a_coudre_1"} run tp @s 6026 206 -1955 90 0

