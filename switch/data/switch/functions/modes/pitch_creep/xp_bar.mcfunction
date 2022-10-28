
##XP from 0 to 1000 points
#points > 0 && points < 1000
#90 seconds = 100%
#1 seconds = 1,111%
#0 seconds = 0%
scoreboard players operation #points switch.data = #pitch_creep_seconds switch.data
scoreboard players operation #points switch.data *= #1000000 switch.data
scoreboard players set #divide switch.data 90000
function switch:engine/xp_bar

