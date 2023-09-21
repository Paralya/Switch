
## Fonction executée lors du lancement de la partie

clear @a
effect clear @a
gamemode adventure @a
team join switch.no_pvp @a
tag @a add switch.alive

kill @e[type=creeper]
kill @e[type=item]
kill @e[type=arrow]

effect give @a saturation infinite 255 true
effect give @a regeneration 5 255 true
effect give @a weakness infinite 2 true
difficulty normal
time set 18000
weather clear

gamerule showDeathMessages false
gamerule naturalRegeneration false
gamerule keepInventory true

## Placement de la map et des joueurs + give d'items
scoreboard players set #is_adventure switch.data 1
scoreboard players set #do_spreadplayers switch.data 1
function switch:choose_map_for/pitch_creep

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Pitch Creep, tenez-vous prêt car vous avez un temps de préparation de 5 secondes !"}]

scoreboard players set #remaining_time switch.data 95
scoreboard players set #pitch_creep_seconds switch.data -5
scoreboard players set #pitch_creep_ticks switch.data 0
scoreboard players set #process_end switch.data 0

scoreboard objectives add switch.temp.deathCount deathCount

