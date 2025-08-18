
#> switch:maps/survival/shoot_da_sheep/tp_shoot_da_sheep
#
# @executed	as @a[tag=!detached]
#
# @within	switch:modes/shoot_da_sheep/start [ as @a[tag=!detached] ]
#

execute if score #count switch.data matches 0 in switch:game run tp @s 123037 114 123020 90 0
execute if score #count switch.data matches 1 in switch:game run tp @s 123003 114 123020 -90 0
execute if score #count switch.data matches 2 in switch:game run tp @s 123020 114 123037 180 0
execute if score #count switch.data matches 3 in switch:game run tp @s 123020 114 123003 0 0

scoreboard players add #count switch.data 1
scoreboard players operation #count switch.data %= #4 switch.data

