
gamemode survival @a[tag=!detached]
effect give @a[tag=!detached] mining_fatigue 5 255 true
effect give @a[tag=!detached] weakness infinite 255 true
effect give @a[tag=!detached] saturation infinite 255 true
function switch:utils/set_dynamic_time

## Téléportation des joueurs
function switch:choose_map_for/spleef

tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Spleef dans 5 secondes, creuser sous les pieds des joueurs et soyez le dernier survivant pour remporter la partie !"}]

scoreboard players set #spleef_seconds switch.data -5
scoreboard players set #spleef_ticks switch.data 0
scoreboard players set #process_end switch.data 0

