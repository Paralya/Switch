
##Fonction executée lors du lancement de la partie

clear @a
effect clear @a
gamemode adventure @a
team join switch.no_pvp @a
tag @a add switch.playing

kill @e[type=item]
kill @e[type=arrow]

effect give @a saturation 99999 255 true
effect give @a regeneration 5 255 true
difficulty normal
time set 18000
weather clear

##Téléportation des joueurs + give d'items
data modify storage switch:main maps_to_choose set value ["mario_kart_1"]
function switch:engine/maps/load
execute as @a at @s run function switch:modes/mario_kart/give_items

gamerule mobGriefing false
gamerule showDeathMessages false
gamerule naturalRegeneration false
gamerule keepInventory true

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Mario Kart, tenez-vous prêt car vous avez un temps de préparation de 10 secondes !"}]

scoreboard players set #mario_kart_seconds switch.data -10
scoreboard players set #mario_kart_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #detect_end switch.data 0

scoreboard objectives add switch.temp.engine dummy
scoreboard objectives add switch.temp.motion_x dummy
scoreboard objectives add switch.temp.motion_z dummy
scoreboard objectives add switch.temp.pos_x dummy
scoreboard objectives add switch.temp.pos_z dummy



