
scoreboard players set @a[tag=!switch.detached] switch.alive 1
effect give @a[tag=!switch.detached] saturation infinite 255 true
effect give @a[tag=!switch.detached] regeneration 5 255 true
effect give @a[tag=!switch.detached] weakness infinite 255 true
function switch:utils/set_dynamic_time

## Téléportation des joueurs
scoreboard players set #is_adventure switch.data 1
function switch:choose_map_for/warden_escape

gamerule showDeathMessages false
gamerule naturalRegeneration false
gamerule keepInventory true

tellraw @a[tag=!switch.detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Warden Escape, tenez-vous prêt car vous avez un temps de préparation de 10 secondes !"}]

scoreboard players set #remaining_time switch.data 100
scoreboard players set #warden_escape_seconds switch.data -10
scoreboard players set #warden_escape_ticks switch.data 0
scoreboard players set #process_end switch.data 0
execute as @a[tag=!switch.detached] at @s run function switch:modes/warden_escape/give_items

