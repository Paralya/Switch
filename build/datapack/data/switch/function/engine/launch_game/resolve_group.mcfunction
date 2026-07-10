
#> switch:engine/launch_game/resolve_group
#
# @within	switch:engine/launch_game/main
#

# The winning option is a group: remember it and fetch its games
data modify storage switch:main current_group set from storage switch:main current_game
scoreboard players operation #group_index switch.data = #game_1 switch.data
function switch:engine/launch_game/resolve_group_macro with storage switch:main

# Keep only the games matching the current player count
scoreboard players set #player_count switch.data 0
execute store result score #player_count switch.data if entity @a[tag=!detached]
data modify storage switch:main group_pool_filtered set value []
execute if data storage switch:main group_pool[0] run function switch:engine/launch_game/filter_pool with storage switch:main group_pool[0]

# Safety: if no game matches the player count, keep them all
execute unless data storage switch:main group_pool_filtered[0] run data modify storage switch:main group_pool_filtered set from storage switch:main groups_games_copy

# If several games remain, start a second vote between them, else launch the only game
execute store result score #pool_size switch.data if data storage switch:main group_pool_filtered[]
execute if score #pool_size switch.data matches 2.. run return run function switch:engine/voting_time/group_vote
data modify storage switch:main current_game set from storage switch:main group_pool_filtered[0].id
data modify storage switch:main current_game_name set from storage switch:main group_pool_filtered[0].name_fr
function switch:engine/launch_game/transition

