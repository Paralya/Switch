
#> switch:maps/survival/shoot_da_sheep/tp_shoot_da_sheep
#
# @executed	as @a[tag=!detached]
#
# @within	switch:modes/shoot_da_sheep/start [ as @a[tag=!detached] ]
#

execute if score #count switch.data matches 0 in switch:game run tp @s 123017 111.69 123000 90 0
execute if score #count switch.data matches 1 in switch:game run tp @s 122983 111.69 123000 -90 0
execute if score #count switch.data matches 2 in switch:game run tp @s 123000 111.69 123017 180 0
execute if score #count switch.data matches 3 in switch:game run tp @s 123000 111.69 122983 0 0

scoreboard players add #count switch.data 1
scoreboard players operation #count switch.data %= #4 switch.data

