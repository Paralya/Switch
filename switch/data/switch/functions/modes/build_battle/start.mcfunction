
## Fonction executée lors du lancement de la partie

clear @a
effect clear @a
gamemode adventure @a
team leave @a

kill @e[type=!player]
kill @e[type=!player]

effect give @a saturation infinite 255 true
time set 6000
weather clear

## Téléportation des joueurs
function switch:choose_map_for/build_battle

scoreboard objectives add switch.temp.id dummy
scoreboard objectives add switch.temp.theme_vote dummy
scoreboard objectives add switch.temp.points dummy

scoreboard players set #build_battle_state switch.data 0
scoreboard players set #build_battle_seconds switch.data -20
scoreboard players set #build_battle_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #vote_theme_1 switch.data 0
scoreboard players set #vote_theme_2 switch.data 0
scoreboard players set #vote_theme_3 switch.data 0
scoreboard players set #vote_theme_4 switch.data 0
scoreboard players set #vote_theme_5 switch.data 0
scoreboard players set @a switch.temp.id -1

# Téléportation des joueurs dans leur cage
function switch:modes/build_battle/preparation/
tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Build Battle, votez pour le thème en ouvrant votre inventaire !"}]

