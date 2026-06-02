
#> switch:stats/_sort_player_stats_finalize
#
# @within	switch:stats/async/register_new_player_stats
#			switch:stats/sort_player_stats
#

# Copy to new storage
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

