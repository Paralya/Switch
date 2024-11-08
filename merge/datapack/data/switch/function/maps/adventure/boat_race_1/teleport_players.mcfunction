
execute if score #count switch.data matches 0 in minecraft:overworld run tp @s 5030.5 100.69 5002 0 0
execute if score #count switch.data matches 1 in minecraft:overworld run tp @s 5030.5 100.69 5000 0 0
execute if score #count switch.data matches 2 in minecraft:overworld run tp @s 5030.5 100.69 5004 0 0
execute if score #count switch.data matches 3 in minecraft:overworld run tp @s 5030.5 100.69 5006 0 0
execute if score #count switch.data matches 4 in minecraft:overworld run tp @s 5030.5 100.69 4998 0 0
execute if score #count switch.data matches 5 in minecraft:overworld run tp @s 5030.5 100.69 5001 0 0
execute if score #count switch.data matches 6 in minecraft:overworld run tp @s 5030.5 100.69 5003 0 0
execute if score #count switch.data matches 7 in minecraft:overworld run tp @s 5030.5 100.69 5005 0 0
execute if score #count switch.data matches 8 in minecraft:overworld run tp @s 5030.5 100.69 4999 0 0
execute if score #count switch.data matches 9 in minecraft:overworld run tp @s 5030.5 100.69 4997 0 0
execute if score #count switch.data matches 10 in minecraft:overworld run tp @s 5030.5 100.69 5007 0 0

scoreboard players add #count switch.data 1
scoreboard players operation #count switch.data %= #11 switch.data

