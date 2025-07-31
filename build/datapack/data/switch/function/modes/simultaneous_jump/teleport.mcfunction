
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
execute if data storage switch:main {map:"de_a_coudre_1"} run tp @s 29034 162 29023 90 0

# MLG a coudre
execute if data storage switch:main {map:"mlg_a_coudre_1"} run item replace entity @s hotbar.0 with water_bucket[can_place_on={blocks:["blue_concrete"]}]
execute if data storage switch:main {map:"mlg_a_coudre_1"} run tp @s 31026 206 31045 90 0

