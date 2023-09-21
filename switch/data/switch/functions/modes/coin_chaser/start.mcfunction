
## Fonction executée lors du lancement de la partie

clear @a
effect clear @a
gamemode adventure @a
team leave @a

kill @e[type=!player]
kill @e[type=!player]

effect give @a saturation infinite 255 true
effect give @a resistance infinite 255 true
time set 0
execute if predicate switch:chance/0.33 run time add 6000
execute if predicate switch:chance/0.33 run time add 6000
execute if predicate switch:chance/0.33 run time add 6000
weather clear

gamerule fallDamage false

## Téléportation des joueurs
scoreboard players set #is_adventure switch.data 1
scoreboard players set #do_spreadplayers switch.data 1
function switch:choose_map_for/coin_chaser

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Coin Chaser, vous avez 10 secondes de préparation !"}]

scoreboard players set #coin_chaser_seconds switch.data -10
scoreboard players set #coin_chaser_ticks switch.data 0
scoreboard players set #remaining_time switch.data 100
scoreboard players set #process_end switch.data 0
scoreboard objectives add switch.temp.points dummy {"text":" Points ","color":"red"}
scoreboard objectives setdisplay sidebar switch.temp.points

# Give Items
execute as @a run function switch:modes/coin_chaser/give_items

