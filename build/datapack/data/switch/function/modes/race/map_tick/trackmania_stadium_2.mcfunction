
#> switch:modes/race/map_tick/trackmania_stadium_2
#
# @within	switch:modes/race/tick
#

scoreboard players set @e[tag=switch.vehicle,x=4094,y=139,z=6015,distance=..2] switch.temp.compteur 1
execute as @e[tag=switch.vehicle,scores={switch.temp.compteur=1..}] run function switch:modes/race/map_tick/trackmania_stadium_2_tp

