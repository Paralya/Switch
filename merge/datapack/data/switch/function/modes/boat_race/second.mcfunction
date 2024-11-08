
scoreboard players add #boat_race_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

function switch:modes/boat_race/xp_bar
function switch:translations/modes_boat_race_second
execute if score #boat_race_seconds switch.data matches 0 in minecraft:overworld run fill 5026 100 5007 5026 100 4997 air
execute if score #boat_race_seconds switch.data matches 0 in minecraft:overworld run fill 51029 139 51036 51042 139 51036 air
execute if score #boat_race_seconds switch.data matches ..-1 in minecraft:overworld run fill 5026 100 5007 5026 100 4997 quartz_slab
execute if score #boat_race_seconds switch.data matches ..-1 in minecraft:overworld run fill 51029 139 51036 51042 139 51036 quartz_slab

# Prevent leaving boat
execute as @a[predicate=!switch:has_vehicle] at @s run ride @s mount @e[type=boat,predicate=!switch:has_passenger,distance=..10,sort=nearest,limit=1]

# Clear des anciens mobs si il y en a
execute if score #boat_race_seconds switch.data matches ..-7 run function switch:utils/safe_kill_macro {selector:"@e[type=boat]"}

