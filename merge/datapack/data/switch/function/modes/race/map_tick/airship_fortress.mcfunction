
scoreboard players set @e[tag=switch.vehicle,x=20654,y=109,z=20382,distance=..5] switch.temp.compteur 1
execute as @e[tag=switch.vehicle,scores={switch.temp.compteur=1..}] run function switch:modes/race/map_tick/airship_fortress_tp


