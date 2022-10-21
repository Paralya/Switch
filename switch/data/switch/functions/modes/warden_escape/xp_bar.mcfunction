
##XP from 0 to 100 points
#points > 0 && points < 100
#60 seconds = 100%
#0 seconds = 0%
scoreboard players operation #points switch.data = #warden_escape_seconds switch.data
scoreboard players operation #points switch.data *= #1000000 switch.data
scoreboard players set #divide switch.data 600000
function switch:engine/xp_bar

