
## XP from 0 to 1000 points
# points > 0 && points < 1000
# 90 seconds = 100%
# 1 seconds = 1,111%
# 0 seconds = 0%
scoreboard players operation #points switch.data = #remaining_time_mdj switch.data
scoreboard players operation #points switch.data *= #1000000 switch.data
scoreboard players set #divide switch.data 45000
function switch:engine/xp_bar

scoreboard players operation #levels switch.data = #remaining_time_mdj switch.data
function switch:engine/xp_bar_levels

