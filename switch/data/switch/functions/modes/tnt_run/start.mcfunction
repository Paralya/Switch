
effect give @a[tag=!detached] weakness infinite 255 true
effect give @a[tag=!detached] saturation infinite 255 true
execute as @a[tag=!detached] at @s run function switch:modes/tnt_run/give_items
function switch:utils/set_dynamic_time

## Téléportation des joueurs
function switch:choose_map_for/tnt_run
gamerule fallDamage false
tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de TNT Run dans 10 secondes, ne vous arrêtez pas de courir car les blocs sous vos pieds vont disparaitre en continu !"}]

scoreboard players set #tnt_run_seconds switch.data -10
scoreboard players set #tnt_run_ticks switch.data 0
scoreboard players set #process_end switch.data 0

