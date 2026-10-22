
#> switch:modes/pitch_creep/maps/octogone_nether_ice
#
# @executed	as @a[tag=!detached,sort=random]
#
# @within	switch:modes/pitch_creep/start [ as @a[tag=!detached,sort=random] ]
#

execute if score #count switch.data matches 0 in switch:game run tp @s 8026 134 -11960 -90 0
execute if score #count switch.data matches 1 in switch:game run tp @s 8054 134 -11960 90 0
execute if score #count switch.data matches 2 in switch:game run tp @s 8031 134 -11969 -45 0
execute if score #count switch.data matches 3 in switch:game run tp @s 8049 134 -11951 135 0
execute if score #count switch.data matches 4 in switch:game run tp @s 8040 134 -11974 0 0
execute if score #count switch.data matches 5 in switch:game run tp @s 8040 134 -11946 180 0
execute if score #count switch.data matches 6 in switch:game run tp @s 8049 134 -11969 45 0
execute if score #count switch.data matches 7 in switch:game run tp @s 8031 134 -11951 225 0

scoreboard players add #count switch.data 1
scoreboard players operation #count switch.data %= #8 switch.data

