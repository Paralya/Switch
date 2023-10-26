
effect give @a[tag=!switch.detached] weakness infinite 255 true
effect give @a[tag=!switch.detached] saturation infinite 255 true
effect give @a[tag=!switch.detached] speed infinite 3 true
time set 18000

## Téléportation des joueurs
scoreboard players set #is_adventure switch.data 1
function switch:choose_map_for/block_party
tellraw @a[tag=!switch.detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Block Party, 10 secondes de préparation et soyez le dernier en vie !"}]

scoreboard players set #block_party_seconds switch.data -10
scoreboard players set #block_party_ticks switch.data -200
scoreboard players set #block_party_round switch.data 1
scoreboard players set #process_end switch.data 0

