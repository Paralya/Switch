
#> switch:maps/survival/rainbow_road/teleport_players
#
# @within	switch:maps/survival/rainbow_road/main
#

execute if score #count switch.data matches 0 in switch:game positioned 24040.5 139.69 24076.5 run tp @s ~0 ~ ~-0 90 0
execute if score #count switch.data matches 1 in switch:game positioned 24040.5 139.69 24076.5 run tp @s ~0 ~ ~-2 90 0
execute if score #count switch.data matches 2 in switch:game positioned 24040.5 139.69 24076.5 run tp @s ~0 ~ ~-4 90 0
execute if score #count switch.data matches 3 in switch:game positioned 24040.5 139.69 24076.5 run tp @s ~0 ~ ~-6 90 0
execute if score #count switch.data matches 4 in switch:game positioned 24040.5 139.69 24076.5 run tp @s ~2 ~ ~-0 90 0
execute if score #count switch.data matches 5 in switch:game positioned 24040.5 139.69 24076.5 run tp @s ~2 ~ ~-2 90 0
execute if score #count switch.data matches 6 in switch:game positioned 24040.5 139.69 24076.5 run tp @s ~2 ~ ~-4 90 0
execute if score #count switch.data matches 7 in switch:game positioned 24040.5 139.69 24076.5 run tp @s ~2 ~ ~-6 90 0
execute if score #count switch.data matches 8 in switch:game positioned 24040.5 139.69 24076.5 run tp @s ~4 ~ ~-0 90 0
execute if score #count switch.data matches 9 in switch:game positioned 24040.5 139.69 24076.5 run tp @s ~4 ~ ~-2 90 0
execute if score #count switch.data matches 10 in switch:game positioned 24040.5 139.69 24076.5 run tp @s ~4 ~ ~-4 90 0
execute if score #count switch.data matches 11 in switch:game positioned 24040.5 139.69 24076.5 run tp @s ~4 ~ ~-6 90 0
execute if score #count switch.data matches 12 in switch:game positioned 24040.5 139.69 24076.5 run tp @s ~6 ~ ~-0 90 0
execute if score #count switch.data matches 13 in switch:game positioned 24040.5 139.69 24076.5 run tp @s ~6 ~ ~-2 90 0
execute if score #count switch.data matches 14 in switch:game positioned 24040.5 139.69 24076.5 run tp @s ~6 ~ ~-4 90 0
execute if score #count switch.data matches 15 in switch:game positioned 24040.5 139.69 24076.5 run tp @s ~6 ~ ~-6 90 0
execute if score #count switch.data matches 16 in switch:game positioned 24040.5 139.69 24076.5 run tp @s ~8 ~ ~-0 90 0
execute if score #count switch.data matches 17 in switch:game positioned 24040.5 139.69 24076.5 run tp @s ~8 ~ ~-2 90 0
execute if score #count switch.data matches 18 in switch:game positioned 24040.5 139.69 24076.5 run tp @s ~8 ~ ~-4 90 0
execute if score #count switch.data matches 19 in switch:game positioned 24040.5 139.69 24076.5 run tp @s ~8 ~ ~-6 90 0
execute if score #count switch.data matches 20 in switch:game positioned 24040.5 139.69 24076.5 run tp @s ~10 ~ ~-0 90 0
execute if score #count switch.data matches 21 in switch:game positioned 24040.5 139.69 24076.5 run tp @s ~10 ~ ~-2 90 0
execute if score #count switch.data matches 22 in switch:game positioned 24040.5 139.69 24076.5 run tp @s ~10 ~ ~-4 90 0
execute if score #count switch.data matches 23 in switch:game positioned 24040.5 139.69 24076.5 run tp @s ~10 ~ ~-6 90 0
execute if score #count switch.data matches 24 in switch:game positioned 24040.5 139.69 24076.5 run tp @s ~12 ~ ~-0 90 0
execute if score #count switch.data matches 25 in switch:game positioned 24040.5 139.69 24076.5 run tp @s ~12 ~ ~-2 90 0
execute if score #count switch.data matches 26 in switch:game positioned 24040.5 139.69 24076.5 run tp @s ~12 ~ ~-4 90 0
execute if score #count switch.data matches 27 in switch:game positioned 24040.5 139.69 24076.5 run tp @s ~12 ~ ~-6 90 0
execute if score #count switch.data matches 28 in switch:game positioned 24040.5 139.69 24076.5 run tp @s ~14 ~ ~-0 90 0
execute if score #count switch.data matches 29 in switch:game positioned 24040.5 139.69 24076.5 run tp @s ~14 ~ ~-2 90 0
execute if score #count switch.data matches 30 in switch:game positioned 24040.5 139.69 24076.5 run tp @s ~14 ~ ~-4 90 0
execute if score #count switch.data matches 31 in switch:game positioned 24040.5 139.69 24076.5 run tp @s ~14 ~ ~-6 90 0
execute if score #count switch.data matches 32 in switch:game positioned 24040.5 139.69 24076.5 run tp @s ~16 ~ ~-0 90 0
execute if score #count switch.data matches 33 in switch:game positioned 24040.5 139.69 24076.5 run tp @s ~16 ~ ~-2 90 0
execute if score #count switch.data matches 34 in switch:game positioned 24040.5 139.69 24076.5 run tp @s ~16 ~ ~-4 90 0
execute if score #count switch.data matches 35 in switch:game positioned 24040.5 139.69 24076.5 run tp @s ~16 ~ ~-6 90 0

scoreboard players add #count switch.data 1
scoreboard players operation #count switch.data %= #36 switch.data

