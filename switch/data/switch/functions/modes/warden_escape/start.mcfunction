
scoreboard players set @a[tag=!detached] switch.alive 1
effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] regeneration 5 255 true
effect give @a[tag=!detached] weakness infinite 255 true
time set 18000

## Téléportation des joueurs
scoreboard players set #is_adventure switch.data 1
function switch:choose_map_for/warden_escape

gamerule showDeathMessages false
gamerule naturalRegeneration false
gamerule keepInventory true

tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Warden Escape dans 10 secondes, vous devez rester discrets afin de ne pas être pris pour cible par les Wardens !"}]

scoreboard players set #remaining_time switch.data 100
scoreboard players set #warden_escape_seconds switch.data -10
scoreboard players set #warden_escape_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard objectives add switch.temp.snowballs_shot minecraft.used:minecraft.snowball
execute as @a[tag=!detached] at @s run function switch:modes/warden_escape/give_items

