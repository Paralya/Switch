
#Slow down engine (-6,777%)
scoreboard players remove @s[scores={switch.temp.engine=1..}] switch.temp.engine 1
scoreboard players operation @s[scores={switch.temp.engine=1..}] switch.temp.engine *= #14 switch.data
scoreboard players operation @s[scores={switch.temp.engine=1..}] switch.temp.engine /= #15 switch.data


#Update motion if it hasn't be done yet
execute if entity @s[tag=!switch.calculated] run function switch:modes/mario_kart/kart/update_motion
tag @s remove switch.calculated

