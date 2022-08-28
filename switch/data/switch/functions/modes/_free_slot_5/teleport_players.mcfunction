
#Téléportation des joueurs à quatre coordonnées différentes
execute if score #count switch.data matches 0 in overworld run tp @s 100 100.69 100 0 0
execute if score #count switch.data matches 1 in overworld run tp @s 100 100.69 120 180 0
execute if score #count switch.data matches 2 in overworld run tp @s 110 100.69 110 90 0
execute if score #count switch.data matches 3 in overworld run tp @s 90 100.69 110 -90 0

scoreboard players add #count switch.data 1
scoreboard players operation #count switch.data %= #4 switch.data
