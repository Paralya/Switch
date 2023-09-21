
## Fonction executée lors du lancement de la partie

clear @a
effect clear @a
gamemode adventure @a
team empty switch.no_pvp
scoreboard players set @a switch.alive 1

kill @e[type=item]
kill @e[type=arrow]

effect give @a night_vision infinite 255 true
effect give @a saturation infinite 255 true
effect give @a regeneration 5 255 true
effect give @a resistance 12 255 true
difficulty normal
time set 0
execute if predicate switch:chance/0.33 run time add 6000
execute if predicate switch:chance/0.33 run time add 6000
execute if predicate switch:chance/0.33 run time add 6000
weather clear

## Téléportation des joueurs + give d'items
scoreboard players set #do_spreadplayers switch.data 1
function switch:choose_map_for/creeper_apocalypse

gamerule mobGriefing true
gamerule showDeathMessages false
gamerule naturalRegeneration false
gamerule keepInventory true

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Creeper Apocalypse, tenez-vous prêt car vous avez un temps de préparation de 5 secondes !"}]

scoreboard players set #remaining_time switch.data 105
scoreboard players set #creeper_apocalypse_seconds switch.data -5
scoreboard players set #creeper_apocalypse_ticks switch.data 0
scoreboard players set #process_end switch.data 0

scoreboard objectives add switch.temp.deathCount deathCount
scoreboard objectives add switch.temp.duplication dummy

execute as @a at @s run function switch:modes/creeper_apocalypse/give_items

