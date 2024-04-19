
# 50 seconds = 100%
# 1 seconds = 1,111%
# 0 seconds = 0%
scoreboard players set #points switch.data 50
scoreboard players operation #remove switch.data = @s switch.temp.cooldown
scoreboard players operation #points switch.data -= #remove switch.data
scoreboard players operation #points switch.data *= #1000000 switch.data
scoreboard players set #divide switch.data 50000
function switch:engine/xp_bar_at_s

scoreboard players operation #levels switch.data = @s switch.temp.cooldown
scoreboard players operation #levels switch.data /= #20 switch.data
execute if score @s switch.temp.cooldown matches 1.. run scoreboard players add #levels switch.data 1
function switch:engine/xp_bar_levels_at_s

