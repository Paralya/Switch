
#> switch:modes/kart_racer/map_tick/dk_mountain
#
# @executed	in switch:game
#
# @within	switch:modes/kart_racer/tick [ in switch:game ]
#

scoreboard players set @e[tag=shopping_kart.kart,x=19988,y=115,z=20542,distance=..3] switch.temp.compteur 1
execute as @e[tag=shopping_kart.kart,scores={switch.temp.compteur=1..}] run function switch:modes/kart_racer/map_tick/dk_mountain_tp

