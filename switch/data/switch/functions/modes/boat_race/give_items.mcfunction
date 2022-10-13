
tag @s add switch.temp

summon item ~ ~ ~ {Item:{id:"minecraft:mangrove_chest_boat",Count:1b}}

xp set @s 100 levels
xp set @s 0 points

execute as @e[type=item,tag=!switch.done,distance=..1] run data modify entity @s PickupDelay set value 0s
execute as @e[type=item,tag=!switch.done,distance=..1] run tag @s add switch.done

tag @s remove switch.temp
