
#> switch:maps/survival/airship_fortress/teleport_players
#
# @within	switch:maps/survival/airship_fortress/main
#

execute if score #count switch.data matches 0 in switch:game positioned 20728.5 121.69 20323.0 run tp @s ~0 ~ ~-0 90 0
execute if score #count switch.data matches 1 in switch:game positioned 20728.5 121.69 20323.0 run tp @s ~0 ~ ~-2 90 0
execute if score #count switch.data matches 2 in switch:game positioned 20728.5 121.69 20323.0 run tp @s ~0 ~ ~-4 90 0
execute if score #count switch.data matches 3 in switch:game positioned 20728.5 121.69 20323.0 run tp @s ~0 ~ ~-6 90 0
execute if score #count switch.data matches 4 in switch:game positioned 20728.5 121.69 20323.0 run tp @s ~2 ~ ~-0 90 0
execute if score #count switch.data matches 5 in switch:game positioned 20728.5 121.69 20323.0 run tp @s ~2 ~ ~-2 90 0
execute if score #count switch.data matches 6 in switch:game positioned 20728.5 121.69 20323.0 run tp @s ~2 ~ ~-4 90 0
execute if score #count switch.data matches 7 in switch:game positioned 20728.5 121.69 20323.0 run tp @s ~2 ~ ~-6 90 0
execute if score #count switch.data matches 8 in switch:game positioned 20728.5 121.69 20323.0 run tp @s ~4 ~ ~-0 90 0
execute if score #count switch.data matches 9 in switch:game positioned 20728.5 121.69 20323.0 run tp @s ~4 ~ ~-2 90 0
execute if score #count switch.data matches 10 in switch:game positioned 20728.5 121.69 20323.0 run tp @s ~4 ~ ~-4 90 0
execute if score #count switch.data matches 11 in switch:game positioned 20728.5 121.69 20323.0 run tp @s ~4 ~ ~-6 90 0
execute if score #count switch.data matches 12 in switch:game positioned 20728.5 121.69 20323.0 run tp @s ~6 ~ ~-0 90 0
execute if score #count switch.data matches 13 in switch:game positioned 20728.5 121.69 20323.0 run tp @s ~6 ~ ~-2 90 0
execute if score #count switch.data matches 14 in switch:game positioned 20728.5 121.69 20323.0 run tp @s ~6 ~ ~-4 90 0
execute if score #count switch.data matches 15 in switch:game positioned 20728.5 121.69 20323.0 run tp @s ~6 ~ ~-6 90 0
execute if score #count switch.data matches 16 in switch:game positioned 20728.5 121.69 20323.0 run tp @s ~8 ~ ~-0 90 0
execute if score #count switch.data matches 17 in switch:game positioned 20728.5 121.69 20323.0 run tp @s ~8 ~ ~-2 90 0
execute if score #count switch.data matches 18 in switch:game positioned 20728.5 121.69 20323.0 run tp @s ~8 ~ ~-4 90 0
execute if score #count switch.data matches 19 in switch:game positioned 20728.5 121.69 20323.0 run tp @s ~8 ~ ~-6 90 0

scoreboard players add #count switch.data 1
scoreboard players operation #count switch.data %= #20 switch.data

