
#> switch:modes/race/map_tick/plains_routine
#
# @within	switch:modes/race/tick
#

execute as @e[tag=shopping_kart.kart,x=20149,y=105,z=19785,distance=..10] at @s if block ~ ~-1 ~ diamond_block run scoreboard players set @s switch.temp.compteur 1
execute as @e[tag=shopping_kart.kart,scores={switch.temp.compteur=1..}] at @s run function switch:modes/race/map_tick/plains_routine_tp
effect give @e[x=20214,y=93,z=19775,distance=..3] levitation 1 15 true

