
#> switch:stats/sort_minigames_stats/loop_minigame
#
# @within	switch:stats/sort_minigames_stats/loop_minigame with storage switch:main sms_copy[0]
#			switch:stats/sort_minigames_stats/main with storage switch:main sms_copy[0]
#

# Update the minigame
$data modify storage switch:main input set value {id:"$(id)"}
function switch:stats/sort_minigames_stats/update_minigame with storage switch:main input

# Go next minigame
data remove storage switch:main sms_copy[0]
execute if data storage switch:main sms_copy[0] run function switch:stats/sort_minigames_stats/loop_minigame with storage switch:main sms_copy[0]

