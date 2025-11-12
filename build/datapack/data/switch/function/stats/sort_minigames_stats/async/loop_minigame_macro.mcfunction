
#> switch:stats/sort_minigames_stats/async/loop_minigame_macro
#
# @within	switch:stats/sort_minigames_stats/async/loop_minigame_no_macro with storage switch:main sms_copy[0]
#
# @args		id (unknown)
#

# Update the minigame
$data modify storage switch:main input set value {id:"$(id)"}
function switch:stats/sort_minigames_stats/update_minigame with storage switch:main input

# Go next minigame
data remove storage switch:main sms_copy[0]
execute if data storage switch:main sms_copy[0] run schedule function switch:stats/sort_minigames_stats/async/loop_minigame_no_macro 1t replace

