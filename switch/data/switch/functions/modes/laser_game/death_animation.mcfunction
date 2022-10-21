
##XP from 0 to 100 points
#points > 0 && points < 100
#60 seconds = 100%
#0 seconds = 0%
scoreboard players add @s switch.temp.dead_cooldown 1
scoreboard players operation #points switch.data = @s switch.temp.dead_cooldown
scoreboard players operation #points switch.data *= #-1 switch.data
function switch:engine/xp_bar_at_s

tag @s[tag=global.ignore,scores={switch.temp.dead_cooldown=0}] remove global.ignore

