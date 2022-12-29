
execute if score #count switch.data matches 0 in overworld run tp @s 38000 103.69 37990 0 0
execute if score #count switch.data matches 1 in overworld run tp @s 38000 103.69 38010 180 0

scoreboard players add #count switch.data 1
scoreboard players operation #count switch.data %= #2 switch.data

