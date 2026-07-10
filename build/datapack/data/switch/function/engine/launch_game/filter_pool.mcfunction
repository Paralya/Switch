
#> switch:engine/launch_game/filter_pool
#
# @within	switch:engine/launch_game/resolve_group with storage switch:main group_pool[0]
#			switch:engine/launch_game/filter_pool with storage switch:main group_pool[0]
#
# @args		min_players (unknown)
#			max_players (unknown)
#

# Keep the game if the player count fits its bounds (max_players -1 = no limit)
scoreboard players set #keep switch.data 1
$scoreboard players set #pool_min switch.data $(min_players)
$scoreboard players set #pool_max switch.data $(max_players)
execute if score #player_count switch.data < #pool_min switch.data run scoreboard players set #keep switch.data 0
execute unless score #pool_max switch.data matches -1 if score #player_count switch.data > #pool_max switch.data run scoreboard players set #keep switch.data 0
execute if score #keep switch.data matches 1 run data modify storage switch:main group_pool_filtered append from storage switch:main group_pool[0]

# Continue loop until the list is empty
data remove storage switch:main group_pool[0]
execute if data storage switch:main group_pool[0] run function switch:engine/launch_game/filter_pool with storage switch:main group_pool[0]

