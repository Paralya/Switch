
execute if score #count switch.data matches 0 in minecraft:overworld run tp @s 3500 100.69 3495 0 0
execute if score #count switch.data matches 1 in minecraft:overworld run tp @s 3500 100.69 3515 180 0
execute if score #count switch.data matches 2 in minecraft:overworld run tp @s 3510 100.69 3505 90 0
execute if score #count switch.data matches 3 in minecraft:overworld run tp @s 3490 100.69 3505 -90 0

scoreboard players add #count switch.data 1
scoreboard players operation #count switch.data %= #4 switch.data

