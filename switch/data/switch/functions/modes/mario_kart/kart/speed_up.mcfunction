
#Speed up engine to progressively (+10%)
scoreboard players add @s switch.temp.engine 0
scoreboard players set @s[scores={switch.temp.engine=..100}] switch.temp.engine 100
scoreboard players operation @s switch.temp.engine *= #10 switch.data
scoreboard players operation @s switch.temp.engine /= #9 switch.data
scoreboard players set @s[scores={switch.temp.engine=2001..}] switch.temp.engine 2000

tag @s remove switch.speed_up
