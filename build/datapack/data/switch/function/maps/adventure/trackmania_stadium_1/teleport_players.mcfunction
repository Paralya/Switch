
#> switch:maps/adventure/trackmania_stadium_1/teleport_players
#
# @within	switch:maps/adventure/trackmania_stadium_1/
#

execute if score #count switch.data matches 0 in minecraft:overworld positioned 25103.5 101.69 25000.5 run tp @s ~0 ~ ~ 180 0
execute if score #count switch.data matches 1 in minecraft:overworld positioned 25103.5 101.69 25000.5 run tp @s ~2 ~ ~ 180 0
execute if score #count switch.data matches 2 in minecraft:overworld positioned 25103.5 101.69 25000.5 run tp @s ~4 ~ ~ 180 0
execute if score #count switch.data matches 3 in minecraft:overworld positioned 25103.5 101.69 25000.5 run tp @s ~6 ~ ~ 180 0
execute if score #count switch.data matches 4 in minecraft:overworld positioned 25103.5 101.69 25000.5 run tp @s ~0 ~ ~2 180 0
execute if score #count switch.data matches 5 in minecraft:overworld positioned 25103.5 101.69 25000.5 run tp @s ~2 ~ ~2 180 0
execute if score #count switch.data matches 6 in minecraft:overworld positioned 25103.5 101.69 25000.5 run tp @s ~4 ~ ~2 180 0
execute if score #count switch.data matches 7 in minecraft:overworld positioned 25103.5 101.69 25000.5 run tp @s ~6 ~ ~2 180 0
execute if score #count switch.data matches 8 in minecraft:overworld positioned 25103.5 101.69 25000.5 run tp @s ~0 ~ ~4 180 0
execute if score #count switch.data matches 9 in minecraft:overworld positioned 25103.5 101.69 25000.5 run tp @s ~2 ~ ~4 180 0
execute if score #count switch.data matches 10 in minecraft:overworld positioned 25103.5 101.69 25000.5 run tp @s ~4 ~ ~4 180 0
execute if score #count switch.data matches 11 in minecraft:overworld positioned 25103.5 101.69 25000.5 run tp @s ~6 ~ ~4 180 0
execute if score #count switch.data matches 12 in minecraft:overworld positioned 25103.5 101.69 25000.5 run tp @s ~0 ~ ~6 180 0
execute if score #count switch.data matches 13 in minecraft:overworld positioned 25103.5 101.69 25000.5 run tp @s ~2 ~ ~6 180 0
execute if score #count switch.data matches 14 in minecraft:overworld positioned 25103.5 101.69 25000.5 run tp @s ~4 ~ ~6 180 0
execute if score #count switch.data matches 15 in minecraft:overworld positioned 25103.5 101.69 25000.5 run tp @s ~6 ~ ~6 180 0
execute if score #count switch.data matches 16 in minecraft:overworld positioned 25103.5 101.69 25000.5 run tp @s ~0 ~ ~8 180 0
execute if score #count switch.data matches 17 in minecraft:overworld positioned 25103.5 101.69 25000.5 run tp @s ~2 ~ ~8 180 0
execute if score #count switch.data matches 18 in minecraft:overworld positioned 25103.5 101.69 25000.5 run tp @s ~4 ~ ~8 180 0
execute if score #count switch.data matches 19 in minecraft:overworld positioned 25103.5 101.69 25000.5 run tp @s ~6 ~ ~8 180 0

scoreboard players add #count switch.data 1
scoreboard players operation #count switch.data %= #20 switch.data

