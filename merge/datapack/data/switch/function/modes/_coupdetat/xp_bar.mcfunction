
# 1200 ticks / 60 seconds = 100%
# 1 seconds = 1,666%
# 0 seconds = 0%
scoreboard players operation #points switch.data = #coupdetat_ticks switch.data
scoreboard players operation #points switch.data *= #1000000 switch.data
scoreboard players set #divide switch.data 1200000
function switch:engine/xp_bar

scoreboard players operation #levels switch.data = #remaining_seconds switch.data
function switch:engine/xp_bar_levels

