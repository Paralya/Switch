
##Fonction executée lors du lancement de la partie

clear @a
effect clear @a
gamemode adventure @a
team join switch.no_pvp @a
tag @a add switch.alive
tp @a 100 100 100 0 0

kill @e[type=creeper]
kill @e[type=item]
kill @e[type=arrow]
execute as @a at @s run function switch:modes/pitch_creep/give_items

effect give @a saturation 99999 255 true
effect give @a regeneration 5 255 true
effect give @a weakness 99999 2 true
difficulty normal
weather clear

gamerule mobGriefing false
gamerule naturalRegeneration false
gamerule keepInventory true

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Pitch Creep, tenez-vous prêt car vous avez un temps de préparation de 5 secondes !"}]

scoreboard players set #pitch_creep_seconds switch.data -5
scoreboard players set #pitch_creep_ticks switch.data 0
scoreboard players set #process_end switch.data 0

scoreboard objectives add switch.temp.deathCount deathCount

