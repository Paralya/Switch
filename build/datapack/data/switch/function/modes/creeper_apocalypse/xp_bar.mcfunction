
#> switch:modes/creeper_apocalypse/xp_bar
#
# @within	switch:modes/creeper_apocalypse/second
#

scoreboard players set #divide switch.data 100000
function switch:modes/_common/xp_bar/time {points_score:"#creeper_apocalypse_seconds",levels_score:"#remaining_time"}

