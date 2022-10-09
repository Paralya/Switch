
##Fonction executée lors du lancement de la partie

#Map
data modify storage switch:main maps_to_choose set value ["boat_race_1"]
function switch:engine/maps/load

clear @a
effect clear @a
gamemode adventure @a
team join switch.no_pvp @a
tag @a remove switch.boat_race.finished
tag @a add switch.alive

kill @e[type=item]
kill @e[type=arrow]

effect give @a saturation 99999 255 true
effect give @a regeneration 5 255 true
effect give @a weakness 99999 2 true
effect give @a resistance 99999 255 true
difficulty normal
time set 13475
weather clear

##give du bateau coffre (pour pas qu'ils soit deux dans le bateau)
execute as @a at @s run function switch:modes/boat_race/give_items

gamerule mobGriefing false
gamerule showDeathMessages false
gamerule naturalRegeneration false
gamerule keepInventory true

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Boat Race.\nÀ vos Marques, Prêt, Partez.\nFaites Chauffer les bateaux.\nVous avez 8 minutes maximum pour finir la course:)"}]

scoreboard players set #boat_race_seconds switch.data -5
scoreboard players set #boat_race_ticks switch.data 0
scoreboard players set #process_end switch.data 0

scoreboard objectives add switch.temp.deathCount deathCount
