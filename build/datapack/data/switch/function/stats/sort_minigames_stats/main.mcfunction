
#> switch:stats/sort_minigames_stats/main
#
# @within	???
#

# For each minigame
data modify storage switch:main sms_copy set from storage switch:main minigames
execute if data storage switch:main sms_copy[0] run function switch:stats/sort_minigames_stats/loop_minigame with storage switch:main sms_copy[0]

