
#> switch:maps/survival/baby_park/teleport_players
#
# @within	switch:maps/survival/baby_park/main
#

execute if score #count switch.data matches 0 in minecraft:overworld positioned 21003.5 131.69 21014.5 run tp @s ~0 ~ ~-0 90 0
execute if score #count switch.data matches 1 in minecraft:overworld positioned 21003.5 131.69 21014.5 run tp @s ~0 ~ ~-2 90 0
execute if score #count switch.data matches 2 in minecraft:overworld positioned 21003.5 131.69 21014.5 run tp @s ~0 ~ ~-4 90 0
execute if score #count switch.data matches 3 in minecraft:overworld positioned 21003.5 131.69 21014.5 run tp @s ~0 ~ ~-6 90 0
execute if score #count switch.data matches 4 in minecraft:overworld positioned 21003.5 131.69 21014.5 run tp @s ~2 ~ ~-0 90 0
execute if score #count switch.data matches 5 in minecraft:overworld positioned 21003.5 131.69 21014.5 run tp @s ~2 ~ ~-2 90 0
execute if score #count switch.data matches 6 in minecraft:overworld positioned 21003.5 131.69 21014.5 run tp @s ~2 ~ ~-4 90 0
execute if score #count switch.data matches 7 in minecraft:overworld positioned 21003.5 131.69 21014.5 run tp @s ~2 ~ ~-6 90 0
execute if score #count switch.data matches 8 in minecraft:overworld positioned 21003.5 131.69 21014.5 run tp @s ~4 ~ ~-0 90 0
execute if score #count switch.data matches 9 in minecraft:overworld positioned 21003.5 131.69 21014.5 run tp @s ~4 ~ ~-2 90 0
execute if score #count switch.data matches 10 in minecraft:overworld positioned 21003.5 131.69 21014.5 run tp @s ~4 ~ ~-4 90 0
execute if score #count switch.data matches 11 in minecraft:overworld positioned 21003.5 131.69 21014.5 run tp @s ~4 ~ ~-6 90 0
execute if score #count switch.data matches 12 in minecraft:overworld positioned 21003.5 131.69 21014.5 run tp @s ~6 ~ ~-0 90 0
execute if score #count switch.data matches 13 in minecraft:overworld positioned 21003.5 131.69 21014.5 run tp @s ~6 ~ ~-2 90 0
execute if score #count switch.data matches 14 in minecraft:overworld positioned 21003.5 131.69 21014.5 run tp @s ~6 ~ ~-4 90 0
execute if score #count switch.data matches 15 in minecraft:overworld positioned 21003.5 131.69 21014.5 run tp @s ~6 ~ ~-6 90 0
execute if score #count switch.data matches 16 in minecraft:overworld positioned 21003.5 131.69 21014.5 run tp @s ~8 ~ ~-0 90 0
execute if score #count switch.data matches 17 in minecraft:overworld positioned 21003.5 131.69 21014.5 run tp @s ~8 ~ ~-2 90 0
execute if score #count switch.data matches 18 in minecraft:overworld positioned 21003.5 131.69 21014.5 run tp @s ~8 ~ ~-4 90 0
execute if score #count switch.data matches 19 in minecraft:overworld positioned 21003.5 131.69 21014.5 run tp @s ~8 ~ ~-6 90 0

scoreboard players add #count switch.data 1
scoreboard players operation #count switch.data %= #20 switch.data

