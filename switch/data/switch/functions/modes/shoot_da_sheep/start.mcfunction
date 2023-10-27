
team join switch.no_pvp @a[tag=!detached]
effect give @a[tag=!detached] saturation infinite 255 true
function switch:utils/set_dynamic_time

## Téléportation des joueurs
scoreboard players set #is_adventure switch.data 1
function switch:choose_map_for/shoot_da_sheep

tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Shoot Da'Sheep, vous avez 5 secondes de préparation !"}]

scoreboard players set #shoot_da_sheep_seconds switch.data -5
scoreboard players set #shoot_da_sheep_ticks switch.data 0
scoreboard players set #remaining_time switch.data 65
scoreboard players set #process_end switch.data 0
scoreboard objectives add switch.temp.points dummy {"text":" Points ","color":"red"}
scoreboard objectives setdisplay sidebar switch.temp.points

give @a bow{Unbreakable:1b,Enchantments:[{id:"minecraft:infinity",lvl:10s}]}
give @a arrow

