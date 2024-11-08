
scoreboard players set @e[tag=shopping_kart.kart,x=20654,y=109,z=20382,distance=..5] switch.temp.compteur 1
execute as @e[tag=shopping_kart.kart,scores={switch.temp.compteur=1..}] run function switch:modes/kart_racer/map_tick/airship_fortress_tp


