
execute if score #count switch.data matches 0 in minecraft:overworld run tp @s 123017 111.69 123000 90 0
execute if score #count switch.data matches 1 in minecraft:overworld run tp @s 122983 111.69 123000 -90 0
execute if score #count switch.data matches 2 in minecraft:overworld run tp @s 123000 111.69 123017 180 0
execute if score #count switch.data matches 3 in minecraft:overworld run tp @s 123000 111.69 122983 0 0

scoreboard players add #count switch.data 1
scoreboard players operation #count switch.data %= #4 switch.data

