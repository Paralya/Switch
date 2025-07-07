
#> switch:stats/sort_minigames_stats/async/main
#
# @within	switch:stats/_update_every_single_stat
#

# For each minigame
data modify storage switch:main sms_copy set from storage switch:main minigames
execute if data storage switch:main sms_copy[0] run schedule function switch:stats/sort_minigames_stats/async/loop_minigame_no_macro 1t replace

