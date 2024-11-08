
#> switch:modes/de_a_coudre/xp_bar
#
# @within	switch:modes/de_a_coudre/tick
#

# 15 seconds = 100%	(function runned every tick so 15s = 300 ticks)
# 0 seconds = 0%
scoreboard players operation #points switch.data = #remaining_time switch.data
scoreboard players operation #points switch.data *= #1000000 switch.data
scoreboard players set #divide switch.data 300000
function switch:engine/xp_bar

scoreboard players operation #levels switch.data = #remaining_time switch.data
scoreboard players operation #levels switch.data /= #20 switch.data
function switch:engine/xp_bar_levels

