
#> switch:modes/pillars_of_fortune/xp_bar
#
# @within	switch:modes/pillars_of_fortune/second
#

# 600 seconds = 100%
# 1 seconds = 1,111%
# 0 seconds = 0%
scoreboard players operation #points switch.data = #pillars_of_fortune_seconds switch.data
scoreboard players operation #points switch.data *= #1000000 switch.data
scoreboard players set #divide switch.data 600000
function switch:engine/xp_bar

scoreboard players operation #levels switch.data = #remaining_time switch.data
function switch:engine/xp_bar_levels

