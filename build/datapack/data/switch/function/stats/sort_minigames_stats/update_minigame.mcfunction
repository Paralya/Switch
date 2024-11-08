
#> switch:stats/sort_minigames_stats/update_minigame
#
# @within	switch:engine/stop with storage switch:main input
#			switch:stats/sort_minigames_stats/loop_minigame with storage switch:main input
#

## Storage Format: switch:stats all.modes = {pitch_creep:{total_games:0,played:[],wins:[]}, minigolf:{...}, ...}
# Sort played and wins arrays in descending order
$data modify storage switch:temp played set from storage switch:stats all.modes.$(id).played
$data modify storage switch:temp wins set from storage switch:stats all.modes.$(id).wins
$data modify storage switch:temp played_win_ratio set from storage switch:stats all.modes.$(id).played_win_ratio
data modify storage switch:temp new_played set value []
data modify storage switch:temp new_wins set value []
data modify storage switch:temp new_played_win_ratio set value []
execute if data storage switch:temp played[0] run function switch:stats/sort_minigames_stats/loop_played_and_wins
$data modify storage switch:stats all.modes.$(id).played set from storage switch:temp new_played
$data modify storage switch:stats all.modes.$(id).wins set from storage switch:temp new_wins
$data modify storage switch:stats all.modes.$(id).played_win_ratio set from storage switch:temp new_played_win_ratio

# Check if a player have a number of played games superior to the total games played
scoreboard players set #max_played switch.data 0
scoreboard players set #total_games switch.data 0
$execute store result score #total_games switch.data run data get storage switch:stats all.modes.$(id).total_games
execute store result score #max_played switch.data run data get storage switch:temp new_played[0].value
$execute if score #max_played switch.data > #total_games switch.data store result storage switch:stats all.modes.$(id).total_games int 1 run scoreboard players get #max_played switch.data

# Reset temp storage
data remove storage switch:temp played
data remove storage switch:temp wins
data remove storage switch:temp played_win_ratio
data remove storage switch:temp new_played
data remove storage switch:temp new_wins
data remove storage switch:temp new_played_win_ratio
data remove storage switch:temp copy_played
data remove storage switch:temp copy_wins
data remove storage switch:temp copy_played_win_ratio

