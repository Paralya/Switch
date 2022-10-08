
##Fonction executée lors du lancement de la partie

clear @a
effect clear @a
gamemode adventure @a
team empty switch.no_pvp
tag @a add switch.alive

kill @e[type=item]
kill @e[type=arrow]

effect give @a night_vision 99999 255 true
effect give @a saturation 99999 255 true
effect give @a regeneration 5 255 true
difficulty normal
time set 6000
weather clear

##Téléportation des joueurs + give d'items
data modify storage switch:main maps_to_choose set value ["enchanting_island", "spectre_original", "friends_cube_lobby"]
function switch:engine/maps/load
execute as @a at @s run function switch:modes/creeper_apocalypse/give_items

gamerule mobGriefing true
gamerule showDeathMessages false
gamerule naturalRegeneration false
gamerule keepInventory true

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Creeper Apocalypse, tenez-vous prêt car vous avez un temps de préparation de 5 secondes !"}]

scoreboard players set #creeper_apocalypse_seconds switch.data -5
scoreboard players set #creeper_apocalypse_ticks switch.data 0
scoreboard players set #process_end switch.data 0

scoreboard objectives add switch.temp.deathCount deathCount
scoreboard objectives add switch.temp.duplication dummy

