
# Append remaining unsorted elements from temp lists to new lists
data modify storage switch:temp sms_new_played append from storage switch:temp sms_played[]
data modify storage switch:temp sms_new_wins append from storage switch:temp sms_wins[]
data modify storage switch:temp sms_new_played_win_ratio append from storage switch:temp sms_played_win_ratio[]

