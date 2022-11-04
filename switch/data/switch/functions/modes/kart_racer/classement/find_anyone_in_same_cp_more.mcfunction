
tag @s add switch.temp
scoreboard players operation #predicate switch.data = @s switch.temp.classement 
scoreboard players set @a[tag=!switch.temp,predicate=switch:has_same_classement] switch.temp 1
tag @s remove switch.temp


