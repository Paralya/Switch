
#> switch:stats/sort_minigames_stats/loop_minigame
#
# @within	switch:stats/sort_minigames_stats/loop_minigame with storage switch:main sms_copy[0]
#			switch:stats/sort_minigames_stats/main with storage switch:main sms_copy[0]
#

function switch:stats/sort_minigames_stats/update_and_remove with storage switch:main sms_copy[0]
execute if data storage switch:main sms_copy[0] run function switch:stats/sort_minigames_stats/loop_minigame with storage switch:main sms_copy[0]

