
##XP from 0 to 100 points
#points > 0 && points < 100
#480 seconds = 100%
#0 seconds = 0%
scoreboard players operation #points switch.data = #boat_race_seconds switch.data
scoreboard players operation #points switch.data *= #1000000 switch.data
scoreboard players set #divide switch.data 4800000
function switch:engine/xp_bar

