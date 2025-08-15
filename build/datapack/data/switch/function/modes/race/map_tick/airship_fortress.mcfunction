
#> switch:modes/race/map_tick/airship_fortress
#
# @within	switch:modes/race/tick
#

scoreboard players set @e[tag=shopping_kart.kart,x=20654,y=109,z=20382,distance=..5] switch.temp.compteur 1
execute as @e[tag=shopping_kart.kart,scores={switch.temp.compteur=1..}] run function switch:modes/race/map_tick/airship_fortress_tp

