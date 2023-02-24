
## Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #boat_race_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

execute if score #boat_race_seconds switch.data matches 0.. run function switch:modes/boat_race/xp_bar
execute if score #boat_race_seconds switch.data matches 0 run tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Ouverture de la barrière ! GOOOOOO !"}]
execute if score #boat_race_seconds switch.data matches 0 run fill 5026 100 5007 5026 100 4997 air
execute if score #boat_race_seconds switch.data matches 0 run fill 51029 139 51036 51042 139 51036 air
execute if score #boat_race_seconds switch.data matches ..-1 run fill 5026 100 5007 5026 100 4997 quartz_slab
execute if score #boat_race_seconds switch.data matches ..-1 run fill 51029 139 51036 51042 139 51036 quartz_slab

# Clear des anciens mobs si il y en a
execute if score #boat_race_seconds switch.data matches ..-7 run tp @e[type=chest_boat] 0 -10000 0
execute if score #boat_race_seconds switch.data matches ..-7 run kill @e[type=chest_boat]

