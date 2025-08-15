
#> switch:modes/race/map_tick/clock_circuit
#
# @within	switch:modes/race/tick
#

execute as @e[tag=shopping_kart.kart,x=19563,y=127,z=20339,distance=..10] at @s if block ~ ~-1 ~ diamond_block run scoreboard players set @s switch.temp.compteur 1
execute as @e[tag=shopping_kart.kart,scores={switch.temp.compteur=1..}] at @s run function switch:modes/race/map_tick/clock_circuit_tp

