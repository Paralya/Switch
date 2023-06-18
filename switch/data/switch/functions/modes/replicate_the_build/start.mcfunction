
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
effect give @a resistance infinite 255 true
effect give @a weakness infinite 2 true
difficulty normal
time set 6000
weather clear

## Téléportation des joueurs + give d'items
tp @a 101000 100 101000
execute as @a run function switch:replicate_the_build/start/select_teams

gamerule mobGriefing false
gamerule showDeathMessages false
gamerule naturalRegeneration false
gamerule keepInventory true

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Replicate the build, tenez-vous prêt car vous avez un temps de préparation de 5 secondes !"}]

scoreboard players set #replicate_the_build_seconds switch.data -5
scoreboard players set #replicate_the_build_ticks switch.data 0
scoreboard players set #process_end switch.data 0

scoreboard objectives add switch.temp.deathCount deathCount

