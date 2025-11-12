
#> switch:stats/macro_add_to_new_player_arrays
#
# @within	switch:stats/async/work_loop_player_stats with storage switch:temp indexes
#			switch:stats/loop_player_stats with storage switch:temp indexes
#
# @args		played (int)
#			wins (int)
#			kills (int)
#			deaths (int)
#			money (int)
#			played_win_ratio (int)
#			advancement_count (int)
#

$data modify storage switch:temp new_played append from storage switch:temp played[$(played)]
$data modify storage switch:temp new_wins append from storage switch:temp wins[$(wins)]
$data modify storage switch:temp new_kills append from storage switch:temp kills[$(kills)]
$data modify storage switch:temp new_deaths append from storage switch:temp deaths[$(deaths)]
$data modify storage switch:temp new_money append from storage switch:temp money[$(money)]
$data modify storage switch:temp new_played_win_ratio append from storage switch:temp played_win_ratio[$(played_win_ratio)]
$data modify storage switch:temp new_advancement_count append from storage switch:temp advancement_count[$(advancement_count)]
$data remove storage switch:temp played[$(played)]
$data remove storage switch:temp wins[$(wins)]
$data remove storage switch:temp kills[$(kills)]
$data remove storage switch:temp deaths[$(deaths)]
$data remove storage switch:temp money[$(money)]
$data remove storage switch:temp played_win_ratio[$(played_win_ratio)]
$data remove storage switch:temp advancement_count[$(advancement_count)]

