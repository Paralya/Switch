
# 480 seconds = 100%
scoreboard players operation #points switch.data = #boat_race_seconds switch.data
scoreboard players operation #points switch.data *= #1000000 switch.data
scoreboard players set #divide switch.data 480000
function switch:modes/_common/xp_bar/points

scoreboard players operation #levels switch.data = #remaining_time switch.data
function switch:modes/_common/xp_bar/levels

