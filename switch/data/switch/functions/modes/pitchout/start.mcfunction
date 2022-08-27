
##Fonction executée lors du lancement de la partie

clear @a
effect clear @a
gamemode adventure @a
team leave @a
tag @a add switch.first_life
tag @a add switch.second_life
tag @a add switch.third_life

kill @e[type=item]
kill @e[type=arrow]

effect give @a saturation 99999 255 true
effect give @a regeneration 5 255 true
effect give @a weakness 99999 2 true
difficulty normal
time set 18000
weather clear

##Téléportation des joueurs dans les quatres coins
scoreboard players set #spawn_count switch.data 0
execute as @a[sort=random] run function switch:modes/pitchout/teleport_players
execute as @a at @s run function switch:modes/pitchout/give_items

gamerule mobGriefing false
gamerule showDeathMessages false
gamerule naturalRegeneration false
gamerule keepInventory true

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Pitch Creep, tenez-vous prêt car vous avez un temps de préparation de 5 secondes !"}]

scoreboard players set #pitchout_seconds switch.data -5
scoreboard players set #pitchout_ticks switch.data 0
scoreboard players set #process_end switch.data 0

