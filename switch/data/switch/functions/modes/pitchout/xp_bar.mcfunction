
##XP from 0 to 1000 points
# points > 0 && points < 1000
execute if entity @s[tag=switch.first_life] run scoreboard players set #points switch.data 333
execute if entity @s[tag=switch.second_life] run scoreboard players set #points switch.data 666
execute if entity @s[tag=switch.third_life] run scoreboard players set #points switch.data 1000
function switch:engine/xp_bar_at_s

