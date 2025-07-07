
$data modify storage switch:temp sms_new_played append from storage switch:temp sms_played[$(played)]
$data modify storage switch:temp sms_new_wins append from storage switch:temp sms_wins[$(wins)]
$data modify storage switch:temp sms_new_played_win_ratio append from storage switch:temp sms_played_win_ratio[$(played_win_ratio)]
$data remove storage switch:temp sms_played[$(played)]
$data remove storage switch:temp sms_wins[$(wins)]
$data remove storage switch:temp sms_played_win_ratio[$(played_win_ratio)]

