
#> switch:modes/mlg_a_coudre/next_player_teleport
#
# @within	switch:modes/mlg_a_coudre/next_player
#

scoreboard players set #success switch.data 1

clear @s
item replace entity @s hotbar.0 with water_bucket[can_place_on={blocks:["blue_concrete"]}]

gamemode adventure @s
scoreboard players set #remaining_time switch.data 15
execute if data storage switch:main {map:"mlg_a_coudre_1"} run tp @s 31011 200.69 31000 90 0

