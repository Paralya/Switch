
execute if score #count switch.data matches 0 in overworld run tp @s 25103.5 101.69 25000 180 0
execute if score #count switch.data matches 1 in overworld run tp @s 25105.5 100.69 25000 180 0
execute if score #count switch.data matches 2 in overworld run tp @s 25107.5 100.69 25000 180 0
execute if score #count switch.data matches 3 in overworld run tp @s 25109.5 100.69 25000 180 0
execute if score #count switch.data matches 4 in overworld run tp @s 25103.5 100.69 25002 180 0
execute if score #count switch.data matches 5 in overworld run tp @s 25105.5 100.69 25002 180 0
execute if score #count switch.data matches 6 in overworld run tp @s 25107.5 100.69 25002 180 0
execute if score #count switch.data matches 7 in overworld run tp @s 25109.5 100.69 25002 180 0
execute if score #count switch.data matches 8 in overworld run tp @s 25103.5 100.69 25004 180 0
execute if score #count switch.data matches 9 in overworld run tp @s 25105.5 100.69 25004 180 0
execute if score #count switch.data matches 10 in overworld run tp @s 25107.5 100.69 25004 180 0
execute if score #count switch.data matches 11 in overworld run tp @s 25109.5 100.69 25004 180 0
execute if score #count switch.data matches 12 in overworld run tp @s 25103.5 100.69 25006 180 0
execute if score #count switch.data matches 13 in overworld run tp @s 25105.5 100.69 25006 180 0
execute if score #count switch.data matches 14 in overworld run tp @s 25107.5 100.69 25006 180 0
execute if score #count switch.data matches 15 in overworld run tp @s 25109.5 100.69 25006 180 0
execute if score #count switch.data matches 16 in overworld run tp @s 25103.5 100.69 25008 180 0
execute if score #count switch.data matches 17 in overworld run tp @s 25105.5 100.69 25008 180 0
execute if score #count switch.data matches 18 in overworld run tp @s 25107.5 100.69 25008 180 0
execute if score #count switch.data matches 19 in overworld run tp @s 25109.5 100.69 25008 180 0

scoreboard players add #count switch.data 1
scoreboard players operation #count switch.data %= #20 switch.data

