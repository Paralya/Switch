
#> switch:modes/kart_racer/classement/find_anyone_in_same_cp_more
#
# @within	switch:modes/kart_racer/classement/find_anyone_in_same_cp
#

tag @s add switch.temp
scoreboard players operation #predicate switch.data = @s switch.temp.classement 
scoreboard players set @a[tag=!detached,tag=!switch.temp,predicate=switch:has_same_classement] switch.temp 1
tag @s remove switch.temp


