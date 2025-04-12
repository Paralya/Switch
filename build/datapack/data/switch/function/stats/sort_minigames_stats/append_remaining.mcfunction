
#> switch:stats/sort_minigames_stats/append_remaining
#
# @within	switch:stats/sort_minigames_stats/loop_played_and_wins
#

# Append remaining unsorted elements from temp lists to new lists
data modify storage switch:temp new_played append from storage switch:temp played[]
data modify storage switch:temp new_wins append from storage switch:temp wins[]
data modify storage switch:temp new_played_win_ratio append from storage switch:temp played_win_ratio[]

