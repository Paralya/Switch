
scoreboard players add #boat_race_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

function switch:modes/boat_race/xp_bar
execute if score #boat_race_seconds switch.data matches 0 run tellraw @a[tag=!switch.detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Ouverture de la barrière ! GOOOOOO !"}]
execute if score #boat_race_seconds switch.data matches 0 run fill 5026 100 5007 5026 100 4997 air
execute if score #boat_race_seconds switch.data matches 0 run fill 51029 139 51036 51042 139 51036 air
execute if score #boat_race_seconds switch.data matches ..-1 run fill 5026 100 5007 5026 100 4997 quartz_slab
execute if score #boat_race_seconds switch.data matches ..-1 run fill 51029 139 51036 51042 139 51036 quartz_slab

# Clear des anciens mobs si il y en a
execute if score #boat_race_seconds switch.data matches ..-7 run function switch:utils/safe_kill_macro {selector:"@e[type=chest_boat]"}

