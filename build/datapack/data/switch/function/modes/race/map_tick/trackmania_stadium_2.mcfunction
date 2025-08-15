
#> switch:modes/race/map_tick/trackmania_stadium_2
#
# @within	switch:modes/race/tick
#

scoreboard players set @e[tag=shopping_kart.kart,x=37094,y=139,z=37015,distance=..2] switch.temp.compteur 1
execute as @e[tag=shopping_kart.kart,scores={switch.temp.compteur=1..}] run function switch:modes/race/map_tick/trackmania_stadium_2_tp

