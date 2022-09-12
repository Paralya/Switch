
##Fonction executée lors du lancement de la partie
#1/3 de la partie est choisi Traitre. 1 joueur sera choisi Inspecteur, 
#et un autre Ninja. Si il y a plus de 6 joueurs au total. Un gros traitre 
#sera selectionné parmi les Traitres et doit les trahirs et gagner seul.
#L'Inspecteur connaît le nom d'un traitre au bout d'une minute de jeu, à la
#mort de l'inspecteur un traitre aléatoire descend à 5 coeurs permanents
#(sauf gros traitre où c'est 10 coeurs), à la mort du ninja il respawn
#directement mais avec 5 coeurs. Le gros traitre possède 15 coeurs permanents
#par défaut, le ninja lui 10 coeurs mais 5 coeurs après avoir respawn.

clear @a
effect clear @a
gamemode adventure @a
team join switch.no_pvp @a
tag @a add switch.alive

kill @e[type=item]
kill @e[type=arrow]

effect give @a saturation 99999 255 true
effect give @a regeneration 5 255 true
effect give @a weakness 99999 2 true
difficulty normal
time set 18000
weather clear

##Téléportation des joueurs dans quatres coins + give d'items
scoreboard players set #count switch.data 0
execute as @a[sort=random] run function switch:modes/traitors_game/teleport_players
execute as @a at @s run function switch:modes/traitors_game/give_items

gamerule mobGriefing false
gamerule showDeathMessages false
gamerule fallDamage true
gamerule naturalRegeneration true
gamerule keepInventory true

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Traitors Game, tenez-vous prêt car vous avez un temps de préparation de 10 secondes !"}]

scoreboard players set #traitors_game_seconds switch.data -10
scoreboard players set #traitors_game_ticks switch.data 0
scoreboard players set #process_end switch.data 0

scoreboard objectives add switch.temp.id dummy
scoreboard objectives add switch.temp.posX dummy
scoreboard objectives add switch.temp.posY dummy
scoreboard objectives add switch.temp.posZ dummy
scoreboard objectives add switch.temp.cooldown dummy
scoreboard objectives add switch.temp.deathCount deathCount

team add switch.temp.detective
team modify switch.temp.detective color green

#Choix des rôles
scoreboard players set #next_role switch.data 0
scoreboard players set #next_player_id switch.data 0
execute as @a at @s run function switch:modes/traitors_game/roles/main

