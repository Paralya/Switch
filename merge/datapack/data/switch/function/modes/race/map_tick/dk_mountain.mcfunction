
scoreboard players set @e[tag=shopping_kart.kart,x=19988,y=115,z=20542,distance=..3] switch.temp.compteur 1
execute as @e[tag=shopping_kart.kart,scores={switch.temp.compteur=1..}] run function switch:modes/race/map_tick/dk_mountain_tp

