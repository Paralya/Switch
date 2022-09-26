
#Speed up engine to progressively (+10%)
scoreboard players add @s switch.temp.engine 0
scoreboard players add @s[scores={switch.temp.engine=..2}] switch.temp.engine 100
scoreboard players operation @s switch.temp.engine *= #10 switch.data
scoreboard players operation @s switch.temp.engine /= #9 switch.data
scoreboard players set @s[scores={switch.temp.engine=1001..}] switch.temp.engine 1000

function switch:modes/mario_kart/kart/update_motion

