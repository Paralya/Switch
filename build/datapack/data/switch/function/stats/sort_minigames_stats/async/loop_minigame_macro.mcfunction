
#> switch:stats/sort_minigames_stats/async/loop_minigame_macro
#
# @within	switch:stats/sort_minigames_stats/async/loop_minigame_no_macro with storage switch:main sms_copy[0]
#

function switch:stats/sort_minigames_stats/update_and_remove with storage switch:main sms_copy[0]
execute if data storage switch:main sms_copy[0] run schedule function switch:stats/sort_minigames_stats/async/loop_minigame_no_macro 1t replace

