
##Water specification
execute if entity @s[tag=switch.in_water,scores={switch.temp.engine=1000..}] run data modify entity @s Motion[1] set value 0.65d
execute unless block ~ ~ ~ water run tag @s remove switch.in_water
execute if block ~ ~ ~ water run tag @s add switch.in_water
execute if entity @s[tag=switch.in_water,scores={switch.temp.engine=100..}] if block ~ ~ ~ water run data modify entity @s Motion[1] set value -0.5d

