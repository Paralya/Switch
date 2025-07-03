
#> switch:modes/boat_race/second
#
# @within	switch:modes/boat_race/calls/second
#

scoreboard players add #boat_race_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

function switch:modes/boat_race/xp_bar
function switch:translations/modes_boat_race_second
execute if score #boat_race_seconds switch.data matches -5 as @a[tag=!detached,gamemode=!spectator] at @s run function switch:modes/boat_race/summon_boat
execute if score #boat_race_seconds switch.data matches 0 in switch:game run fill 5026 100 5007 5026 100 4997 air
execute if score #boat_race_seconds switch.data matches 0 in switch:game run fill 51029 139 51036 51042 139 51036 air
execute if score #boat_race_seconds switch.data matches ..-1 in switch:game run fill 5026 100 5007 5026 100 4997 quartz_slab
execute if score #boat_race_seconds switch.data matches ..-1 in switch:game run fill 51029 139 51036 51042 139 51036 quartz_slab

# Clear des anciens mobs si il y en a
execute if score #boat_race_seconds switch.data matches ..-7 run function switch:utils/safe_kill_macro {selector:"@e[type=#minecraft:boat]"}

