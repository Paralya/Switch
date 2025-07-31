
#> switch:modes/kart_racer/classement/increase
#
# @executed	at @e[type=marker,tag=switch.checkpoint,predicate=switch:has_same_checkpoint,sort=nearest,limit=1] & as @a[tag=!...,sort=nearest]
#
# @within	switch:modes/kart_racer/classement/has_same_classement [ at @e[type=marker,tag=switch.checkpoint,predicate=switch:has_same_checkpoint,sort=nearest,limit=1] & as @a[tag=!...,sort=nearest] ]
#

scoreboard players operation @s switch.temp.classement += #add switch.data
scoreboard players add #add switch.data 1

