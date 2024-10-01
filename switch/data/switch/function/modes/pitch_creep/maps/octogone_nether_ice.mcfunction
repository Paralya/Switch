
execute if score #count switch.data matches 0 in switch:game run tp @s 160026 134 160040 -90 0
execute if score #count switch.data matches 1 in switch:game run tp @s 160054 134 160040 90 0
execute if score #count switch.data matches 2 in switch:game run tp @s 160031 134 160031 -45 0
execute if score #count switch.data matches 3 in switch:game run tp @s 160049 134 160049 135 0
execute if score #count switch.data matches 4 in switch:game run tp @s 160040 134 160026 0 0
execute if score #count switch.data matches 5 in switch:game run tp @s 160040 134 160054 180 0
execute if score #count switch.data matches 6 in switch:game run tp @s 160049 134 160031 45 0
execute if score #count switch.data matches 7 in switch:game run tp @s 160031 134 160049 225 0

scoreboard players add #count switch.data 1
scoreboard players operation #count switch.data %= #8 switch.data

