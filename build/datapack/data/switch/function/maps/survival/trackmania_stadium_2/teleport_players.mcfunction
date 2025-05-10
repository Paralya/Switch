
#> switch:maps/survival/trackmania_stadium_2/teleport_players
#
# @within	switch:maps/survival/trackmania_stadium_2/main
#

execute if score #count switch.data matches 0 in switch:game positioned 37356.5 110.69 37180.5 run tp @s ~0 ~ ~0 180 0
execute if score #count switch.data matches 1 in switch:game positioned 37356.5 110.69 37180.5 run tp @s ~2 ~ ~0 180 0
execute if score #count switch.data matches 2 in switch:game positioned 37356.5 110.69 37180.5 run tp @s ~4 ~ ~0 180 0
execute if score #count switch.data matches 3 in switch:game positioned 37356.5 110.69 37180.5 run tp @s ~6 ~ ~0 180 0
execute if score #count switch.data matches 4 in switch:game positioned 37356.5 110.69 37180.5 run tp @s ~0 ~ ~2 180 0
execute if score #count switch.data matches 5 in switch:game positioned 37356.5 110.69 37180.5 run tp @s ~2 ~ ~2 180 0
execute if score #count switch.data matches 6 in switch:game positioned 37356.5 110.69 37180.5 run tp @s ~4 ~ ~2 180 0
execute if score #count switch.data matches 7 in switch:game positioned 37356.5 110.69 37180.5 run tp @s ~6 ~ ~2 180 0
execute if score #count switch.data matches 8 in switch:game positioned 37356.5 110.69 37180.5 run tp @s ~0 ~ ~4 180 0
execute if score #count switch.data matches 9 in switch:game positioned 37356.5 110.69 37180.5 run tp @s ~2 ~ ~4 180 0
execute if score #count switch.data matches 10 in switch:game positioned 37356.5 110.69 37180.5 run tp @s ~4 ~ ~4 180 0
execute if score #count switch.data matches 11 in switch:game positioned 37356.5 110.69 37180.5 run tp @s ~6 ~ ~4 180 0
execute if score #count switch.data matches 12 in switch:game positioned 37356.5 110.69 37180.5 run tp @s ~0 ~ ~6 180 0
execute if score #count switch.data matches 13 in switch:game positioned 37356.5 110.69 37180.5 run tp @s ~2 ~ ~6 180 0
execute if score #count switch.data matches 14 in switch:game positioned 37356.5 110.69 37180.5 run tp @s ~4 ~ ~6 180 0
execute if score #count switch.data matches 15 in switch:game positioned 37356.5 110.69 37180.5 run tp @s ~6 ~ ~6 180 0
execute if score #count switch.data matches 16 in switch:game positioned 37356.5 110.69 37180.5 run tp @s ~0 ~ ~8 180 0
execute if score #count switch.data matches 17 in switch:game positioned 37356.5 110.69 37180.5 run tp @s ~2 ~ ~8 180 0
execute if score #count switch.data matches 18 in switch:game positioned 37356.5 110.69 37180.5 run tp @s ~4 ~ ~8 180 0
execute if score #count switch.data matches 19 in switch:game positioned 37356.5 110.69 37180.5 run tp @s ~6 ~ ~8 180 0
execute if score #count switch.data matches 20 in switch:game positioned 37356.5 110.69 37180.5 run tp @s ~0 ~ ~10 180 0
execute if score #count switch.data matches 21 in switch:game positioned 37356.5 110.69 37180.5 run tp @s ~2 ~ ~10 180 0
execute if score #count switch.data matches 22 in switch:game positioned 37356.5 110.69 37180.5 run tp @s ~4 ~ ~10 180 0
execute if score #count switch.data matches 23 in switch:game positioned 37356.5 110.69 37180.5 run tp @s ~6 ~ ~10 180 0
execute if score #count switch.data matches 24 in switch:game positioned 37356.5 110.69 37180.5 run tp @s ~0 ~ ~12 180 0
execute if score #count switch.data matches 25 in switch:game positioned 37356.5 110.69 37180.5 run tp @s ~2 ~ ~12 180 0
execute if score #count switch.data matches 26 in switch:game positioned 37356.5 110.69 37180.5 run tp @s ~4 ~ ~12 180 0
execute if score #count switch.data matches 27 in switch:game positioned 37356.5 110.69 37180.5 run tp @s ~6 ~ ~12 180 0

scoreboard players add #count switch.data 1
scoreboard players operation #count switch.data %= #28 switch.data

