
scoreboard players set @a[tag=!switch.detached] switch.alive 1
effect give @a[tag=!switch.detached] night_vision infinite 255 true
effect give @a[tag=!switch.detached] saturation infinite 255 true
effect give @a[tag=!switch.detached] regeneration 5 255 true
effect give @a[tag=!switch.detached] resistance 12 255 true
function switch:utils/set_dynamic_time

## Téléportation des joueurs + give d'items
scoreboard players set #do_spreadplayers switch.data 1
function switch:choose_map_for/creeper_apocalypse

gamerule mobGriefing true
gamerule showDeathMessages false
gamerule naturalRegeneration false
gamerule keepInventory true

tellraw @a[tag=!switch.detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Creeper Apocalypse, tenez-vous prêt car vous avez un temps de préparation de 5 secondes !"}]

scoreboard players set #remaining_time switch.data 105
scoreboard players set #creeper_apocalypse_seconds switch.data -5
scoreboard players set #creeper_apocalypse_ticks switch.data 0
scoreboard players set #process_end switch.data 0

scoreboard objectives add switch.temp.duplication dummy

execute as @a[tag=!switch.detached] at @s run function switch:modes/creeper_apocalypse/give_items

