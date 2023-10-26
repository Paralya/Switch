
team join switch.no_pvp @a[tag=!switch.detached]
scoreboard players set @a[tag=!switch.detached] switch.alive 1

effect give @a[tag=!switch.detached] saturation infinite 255 true
effect give @a[tag=!switch.detached] regeneration 5 255 true
effect give @a[tag=!switch.detached] weakness infinite 2 true
time set 18000

gamerule showDeathMessages false
gamerule naturalRegeneration false
gamerule keepInventory true

## Placement de la map et des joueurs + give d'items
scoreboard players set #is_adventure switch.data 1
scoreboard players set #do_spreadplayers switch.data 1
function switch:choose_map_for/pitch_creep

tellraw @a[tag=!switch.detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Pitch Creep, tenez-vous prêt car vous avez un temps de préparation de 5 secondes !"}]

scoreboard players set #remaining_time switch.data 95
scoreboard players set #pitch_creep_seconds switch.data -5
scoreboard players set #pitch_creep_ticks switch.data 0
scoreboard players set #process_end switch.data 0

