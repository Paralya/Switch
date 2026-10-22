
#> switch:modes/race/map_tick/plains_routine
#
# @within	switch:modes/race/tick
#

execute as @e[tag=switch.vehicle,x=6712,y=105,z=-5591,distance=..10] at @s if block ~ ~-1 ~ diamond_block run scoreboard players set @s switch.temp.compteur 1
execute as @e[tag=switch.vehicle,scores={switch.temp.compteur=1..}] at @s run function switch:modes/race/map_tick/plains_routine_tp
effect give @e[x=6777,y=93,z=-5601,distance=..3] levitation 1 15 true

