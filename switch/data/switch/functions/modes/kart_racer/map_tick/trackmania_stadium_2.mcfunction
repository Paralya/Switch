
scoreboard players set @e[tag=shopping_kart.kart,x=37094,y=139,z=37015,distance=..3] switch.temp.compteur 1
execute as @e[tag=shopping_kart.kart,scores={switch.temp.compteur=1..}] run function switch:modes/kart_racer/map_tick/trackmania_stadium_2_tp

