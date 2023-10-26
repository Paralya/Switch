
gamemode survival @a[tag=!switch.detached]
effect give @a[tag=!switch.detached] mining_fatigue 5 255 true
effect give @a[tag=!switch.detached] weakness infinite 255 true
effect give @a[tag=!switch.detached] saturation infinite 255 true
function switch:utils/set_dynamic_time

## Téléportation des joueurs
function switch:choose_map_for/spleef

tellraw @a[tag=!switch.detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Spleef, 5 secondes de préparation et soyez le dernier en vie !"}]

scoreboard players set #spleef_seconds switch.data -5
scoreboard players set #spleef_ticks switch.data 0
scoreboard players set #process_end switch.data 0

