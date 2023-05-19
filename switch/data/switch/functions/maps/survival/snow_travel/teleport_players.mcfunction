
execute if score #count switch.data matches 0 in overworld positioned 22958.5 136.69 22945.5 run tp @s ~-0 ~ ~0 270 0
execute if score #count switch.data matches 1 in overworld positioned 22958.5 136.69 22945.5 run tp @s ~-0 ~ ~2 270 0
execute if score #count switch.data matches 2 in overworld positioned 22958.5 136.69 22945.5 run tp @s ~-0 ~ ~4 270 0
execute if score #count switch.data matches 3 in overworld positioned 22958.5 136.69 22945.5 run tp @s ~-0 ~ ~6 270 0
execute if score #count switch.data matches 4 in overworld positioned 22958.5 136.69 22945.5 run tp @s ~-2 ~ ~0 270 0
execute if score #count switch.data matches 5 in overworld positioned 22958.5 136.69 22945.5 run tp @s ~-2 ~ ~2 270 0
execute if score #count switch.data matches 6 in overworld positioned 22958.5 136.69 22945.5 run tp @s ~-2 ~ ~4 270 0
execute if score #count switch.data matches 7 in overworld positioned 22958.5 136.69 22945.5 run tp @s ~-2 ~ ~6 270 0
execute if score #count switch.data matches 8 in overworld positioned 22958.5 136.69 22945.5 run tp @s ~-4 ~ ~0 270 0
execute if score #count switch.data matches 9 in overworld positioned 22958.5 136.69 22945.5 run tp @s ~-4 ~ ~2 270 0
execute if score #count switch.data matches 10 in overworld positioned 22958.5 136.69 22945.5 run tp @s ~-4 ~ ~4 270 0
execute if score #count switch.data matches 11 in overworld positioned 22958.5 136.69 22945.5 run tp @s ~-4 ~ ~6 270 0
execute if score #count switch.data matches 12 in overworld positioned 22958.5 136.69 22945.5 run tp @s ~-6 ~ ~0 270 0
execute if score #count switch.data matches 13 in overworld positioned 22958.5 136.69 22945.5 run tp @s ~-6 ~ ~2 270 0
execute if score #count switch.data matches 14 in overworld positioned 22958.5 136.69 22945.5 run tp @s ~-6 ~ ~4 270 0
execute if score #count switch.data matches 15 in overworld positioned 22958.5 136.69 22945.5 run tp @s ~-6 ~ ~6 270 0
execute if score #count switch.data matches 16 in overworld positioned 22958.5 136.69 22945.5 run tp @s ~-8 ~ ~0 270 0
execute if score #count switch.data matches 17 in overworld positioned 22958.5 136.69 22945.5 run tp @s ~-8 ~ ~2 270 0
execute if score #count switch.data matches 18 in overworld positioned 22958.5 136.69 22945.5 run tp @s ~-8 ~ ~4 270 0
execute if score #count switch.data matches 19 in overworld positioned 22958.5 136.69 22945.5 run tp @s ~-8 ~ ~6 270 0

scoreboard players add #count switch.data 1
scoreboard players operation #count switch.data %= #20 switch.data

