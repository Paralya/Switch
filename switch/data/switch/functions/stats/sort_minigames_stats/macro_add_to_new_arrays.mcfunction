
$data modify storage switch:temp new_played append from storage switch:temp played[$(played)]
$data modify storage switch:temp new_wins append from storage switch:temp wins[$(wins)]
$data modify storage switch:temp new_played_win_ratio append from storage switch:temp played_win_ratio[$(played_win_ratio)]
$data remove storage switch:temp played[$(played)]
$data remove storage switch:temp wins[$(wins)]
$data remove storage switch:temp played_win_ratio[$(played_win_ratio)]

