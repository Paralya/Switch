
#> switch:modes/build_battle/xp_bar_rating
#
# @executed	in switch:build_battle
#
# @within	switch:modes/build_battle/rating_time/second
#

# 10 seconds = 100%
# 0 seconds = 0%
scoreboard players operation #points switch.data = #remaining_time switch.data
scoreboard players operation #points switch.data *= #-1000000 switch.data
scoreboard players set #divide switch.data 10000
function switch:engine/xp_bar

scoreboard players operation #levels switch.data = #remaining_time switch.data
function switch:engine/xp_bar_levels

