
# Choose map
scoreboard players set #is_adventure switch.data 1
function switch:choose_map_for/boat_race

scoreboard players set @a[tag=!detached] switch.alive 1
effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] weakness infinite 255 true
effect give @a[tag=!detached] resistance infinite 255 true

function switch:utils/set_dynamic_time

## Give du bateau coffre (pour pas qu'ils soit deux dans le bateau)
execute as @a[tag=!detached] run function switch:modes/boat_race/give_items

tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Boat Race. Vous avez 8 secondes pour placer votre bateau et y rentrer ainsi que 8 minutes maximum pour finir la course !"}]

scoreboard players set #remaining_time switch.data 488
scoreboard players set #boat_race_seconds switch.data -8
scoreboard players set #boat_race_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #detect_end switch.data 0

