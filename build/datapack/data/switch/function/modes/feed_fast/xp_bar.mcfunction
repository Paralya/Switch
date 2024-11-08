
#> switch:modes/feed_fast/xp_bar
#
# @within	switch:modes/feed_fast/second
#

# 45 seconds = 100%
# 0 seconds = 0%
scoreboard players operation #points switch.data = #remaining_time switch.data
scoreboard players operation #points switch.data *= #1000000 switch.data
scoreboard players set #divide switch.data 45000
function switch:engine/xp_bar

scoreboard players operation #levels switch.data = #remaining_time switch.data
function switch:engine/xp_bar_levels

