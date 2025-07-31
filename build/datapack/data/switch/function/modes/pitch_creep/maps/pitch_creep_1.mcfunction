
#> switch:modes/pitch_creep/maps/pitch_creep_1
#
# @executed	as @a[tag=!detached,sort=random]
#
# @within	switch:modes/pitch_creep/start [ as @a[tag=!detached,sort=random] ]
#

execute if score #count switch.data matches 0 in switch:game run tp @s 3520 121.69 3511 0 0
execute if score #count switch.data matches 1 in switch:game run tp @s 3520 121.69 3529 180 0
execute if score #count switch.data matches 2 in switch:game run tp @s 3529 121.69 3520 90 0
execute if score #count switch.data matches 3 in switch:game run tp @s 3511 121.69 3520 -90 0

scoreboard players add #count switch.data 1
scoreboard players operation #count switch.data %= #4 switch.data

