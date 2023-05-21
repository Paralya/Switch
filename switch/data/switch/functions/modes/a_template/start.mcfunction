
## Fonction executée lors du lancement de la partie

clear @a
effect clear @a
gamemode adventure @a
team join switch.no_pvp @a
tag @a add switch.alive

kill @e[type=item]
kill @e[type=arrow]

effect give @a saturation infinite 255 true
effect give @a regeneration 5 255 true
effect give @a weakness infinite 2 true
difficulty normal
time set 18000
weather clear

## Téléportation des joueurs + give d'items
scoreboard players set #do_spreadplayers switch.data 1
function switch:choose_map_for/a_template
execute as @a at @s run function switch:modes/a_template/give_items

gamerule mobGriefing false
gamerule showDeathMessages false
gamerule naturalRegeneration false
gamerule keepInventory true

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Free Slot, tenez-vous prêt car vous avez un temps de préparation de 5 secondes !"}]

scoreboard players set #a_template_seconds switch.data -5
scoreboard players set #a_template_ticks switch.data 0
scoreboard players set #process_end switch.data 0

scoreboard objectives add switch.temp.deathCount deathCount

