
#> switch:stats/sort_minigames_stats/update_and_remove
#
# @within	switch:stats/sort_minigames_stats/async/loop_minigame_macro with storage switch:main sms_copy[0]
#			switch:stats/sort_minigames_stats/loop_minigame with storage switch:main sms_copy[0]
#
# @args		id (unknown)
#

# Update the minigame
$data modify storage switch:main input set value {id:"$(id)"}
function switch:stats/sort_minigames_stats/update_minigame with storage switch:main input

# Go next minigame
data remove storage switch:main sms_copy[0]

