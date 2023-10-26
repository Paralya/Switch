
effect give @a[tag=!switch.detached] saturation infinite 255 true
effect give @a[tag=!switch.detached] resistance infinite 255 true
function switch:utils/set_dynamic_time

gamerule fallDamage false

## Téléportation des joueurs
scoreboard players set #is_adventure switch.data 1
scoreboard players set #do_spreadplayers switch.data 1
function switch:choose_map_for/coin_chaser

tellraw @a[tag=!switch.detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Coin Chaser, vous avez 10 secondes de préparation !"}]
tellraw @a[tag=!switch.detached] [{"text":"Envolez-vous à l'aide de votre équipement tridimensionnel et vos ailes !\n","color":"green"}]

scoreboard players set #coin_chaser_seconds switch.data -10
scoreboard players set #coin_chaser_ticks switch.data 0
scoreboard players set #remaining_time switch.data 70
scoreboard players set #process_end switch.data 0
scoreboard objectives add switch.temp.points dummy {"text":" Points ","color":"red"}
scoreboard objectives setdisplay sidebar switch.temp.points

execute as @a[tag=!switch.detached] run function switch:modes/coin_chaser/give_items

