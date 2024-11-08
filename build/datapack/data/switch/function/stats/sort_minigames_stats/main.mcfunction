
#> switch:stats/sort_minigames_stats/main
#
# @within	switch:stats/_update_every_single_stat
#

# For each minigame
data modify storage switch:main copy set from storage switch:main minigames
execute if data storage switch:main copy[0] run function switch:stats/sort_minigames_stats/loop_minigame with storage switch:main copy[0]

