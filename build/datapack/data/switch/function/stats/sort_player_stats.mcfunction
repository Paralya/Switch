
#> switch:stats/sort_player_stats
#
# @within	switch:engine/restart
#			switch:player/joined
#			switch:stats/util_update_player
#			switch:stats/_update_every_single_stat
#

## Storage Format: all.player = {total_played:[{name:"Stoupy51",value:0}],total_wins:[],total_kills:[],total_deaths:[],total_money:[],played_win_ratio:[],advancement_count:[]}

# Copy stats to temp storage
data modify storage switch:temp played set from storage switch:stats all.player.total_played
data modify storage switch:temp wins set from storage switch:stats all.player.total_wins
data modify storage switch:temp kills set from storage switch:stats all.player.total_kills
data modify storage switch:temp deaths set from storage switch:stats all.player.total_deaths
data modify storage switch:temp money set from storage switch:stats all.player.total_money
data modify storage switch:temp played_win_ratio set from storage switch:stats all.player.played_win_ratio
data modify storage switch:temp advancement_count set from storage switch:stats all.player.advancement_count
data modify storage switch:temp new_played set value []
data modify storage switch:temp new_wins set value []
data modify storage switch:temp new_kills set value []
data modify storage switch:temp new_deaths set value []
data modify storage switch:temp new_money set value []
data modify storage switch:temp new_played_win_ratio set value []
data modify storage switch:temp new_advancement_count set value []

# Sort stats and copy to new storage
execute if data storage switch:temp played[0] run function switch:stats/loop_player_stats
data modify storage switch:stats all.player.total_played set from storage switch:temp new_played
data modify storage switch:stats all.player.total_wins set from storage switch:temp new_wins
data modify storage switch:stats all.player.total_kills set from storage switch:temp new_kills
data modify storage switch:stats all.player.total_deaths set from storage switch:temp new_deaths
data modify storage switch:stats all.player.total_money set from storage switch:temp new_money
data modify storage switch:stats all.player.played_win_ratio set from storage switch:temp new_played_win_ratio
data modify storage switch:stats all.player.advancement_count set from storage switch:temp new_advancement_count

# Reset temp storage
data remove storage switch:temp played
data remove storage switch:temp wins
data remove storage switch:temp kills
data remove storage switch:temp deaths
data remove storage switch:temp money
data remove storage switch:temp played_win_ratio
data remove storage switch:temp advancement_count
data remove storage switch:temp new_played
data remove storage switch:temp new_wins
data remove storage switch:temp new_kills
data remove storage switch:temp new_deaths
data remove storage switch:temp new_money
data remove storage switch:temp new_played_win_ratio
data remove storage switch:temp new_advancement_count
data remove storage switch:temp copy_played
data remove storage switch:temp copy_wins
data remove storage switch:temp copy_kills
data remove storage switch:temp copy_deaths
data remove storage switch:temp copy_money
data remove storage switch:temp copy_played_win_ratio
data remove storage switch:temp copy_advancement_count

