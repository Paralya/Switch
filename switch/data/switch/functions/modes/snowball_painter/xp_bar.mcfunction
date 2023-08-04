
## XP from 0 to 1000 points
# points > 0 && points < 1000
# 45 seconds = 100%	(function runned every tick so 45s = 900 ticks)
# 0 seconds = 0%
scoreboard players operation #points switch.data = #remaining_time switch.data
scoreboard players operation #points switch.data *= #1000000 switch.data
scoreboard players set #divide switch.data 900000
function switch:engine/xp_bar

scoreboard players operation #levels switch.data = #remaining_time switch.data
scoreboard players operation #levels switch.data /= #20 switch.data
function switch:engine/xp_bar_levels

