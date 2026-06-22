
#> switch:modes/_common/set_wool_color
#
# @executed	at @s
#
# @within	switch:modes/_common/place_wool_count_sides
#			switch:modes/mlg_a_coudre/done
#

scoreboard players operation #block switch.data %= #16 switch.data
scoreboard players add #block switch.data 1

execute if score #block switch.data matches 1 run setblock ~ ~ ~ white_wool
execute if score #block switch.data matches 2 run setblock ~ ~ ~ orange_wool
execute if score #block switch.data matches 3 run setblock ~ ~ ~ magenta_wool
execute if score #block switch.data matches 4 run setblock ~ ~ ~ light_blue_wool
execute if score #block switch.data matches 5 run setblock ~ ~ ~ yellow_wool
execute if score #block switch.data matches 6 run setblock ~ ~ ~ lime_wool
execute if score #block switch.data matches 7 run setblock ~ ~ ~ pink_wool
execute if score #block switch.data matches 8 run setblock ~ ~ ~ gray_wool
execute if score #block switch.data matches 9 run setblock ~ ~ ~ light_gray_wool
execute if score #block switch.data matches 10 run setblock ~ ~ ~ cyan_wool
execute if score #block switch.data matches 11 run setblock ~ ~ ~ purple_wool
execute if score #block switch.data matches 12 run setblock ~ ~ ~ blue_wool
execute if score #block switch.data matches 13 run setblock ~ ~ ~ brown_wool
execute if score #block switch.data matches 14 run setblock ~ ~ ~ green_wool
execute if score #block switch.data matches 15 run setblock ~ ~ ~ red_wool
execute if score #block switch.data matches 16 run setblock ~ ~ ~ black_wool

