
time set 6000
effect give @a[tag=!detached] weakness infinite 255 true
effect give @a[tag=!detached] saturation infinite 255 true

## Téléportation des joueurs
scoreboard players set #do_spreadplayers switch.data 0
scoreboard players set #is_adventure switch.data 1
function switch:choose_map_for/bombardement
tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Bombardement dans 10 secondes, esquivez les boulets de canon et ne tombez pas dans l'eau !"}]

scoreboard players set #bombardement_seconds switch.data -10
scoreboard players set #bombardement_ticks switch.data 0
scoreboard players set #process_end switch.data 0

execute if data storage switch:records bombardement run function switch:modes/bombardement/record_tellraw with storage switch:records bombardement

