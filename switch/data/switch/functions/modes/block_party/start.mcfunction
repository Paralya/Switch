
## Fonction executée lors du lancement de la partie

clear @a
effect clear @a
gamemode adventure @a
team leave @a

kill @e[type=item]

effect give @a weakness infinite 255 true
effect give @a saturation infinite 255 true
effect give @a resistance infinite 255 true
effect give @a regeneration infinite 255 true
difficulty normal
time set 0
execute if predicate switch:chance/0.33 run time add 6000
execute if predicate switch:chance/0.33 run time add 6000
execute if predicate switch:chance/0.33 run time add 6000
weather clear

## Téléportation des joueurs
function switch:choose_map_for/block_party

gamerule mobGriefing false
gamerule showDeathMessages false
gamerule naturalRegeneration false
gamerule keepInventory true

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Block Party, 10 secondes de préparation et soyez le dernier en vie !"}]

scoreboard players set #block_party_seconds switch.data -10
scoreboard players set #block_party_ticks switch.data 0
scoreboard players set #process_end switch.data 0

