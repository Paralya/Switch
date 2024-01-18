
gamemode survival @a[tag=!detached]
effect give @a[tag=!detached] blindness 10 255 true
effect give @a[tag=!detached] weakness 10 255 true
effect give @a[tag=!detached] saturation 10 255 true
effect give @a[tag=!detached] resistance 10 255 true
effect give @a[tag=!detached] regeneration 10 255 true
effect give @a[tag=!detached] speed infinite 1 true
effect give @a[tag=!detached] jump_boost infinite 2 true
effect give @a[tag=!detached] invisibility infinite 255 true
function switch:utils/set_dynamic_time

## Téléportation des joueurs
scoreboard players set #do_spreadplayers switch.data 1
function switch:choose_map_for/cigogne

gamerule naturalRegeneration false
gamerule keepInventory true

tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de Cigogne, 10 secondes de préparation et soyez le dernier en vie !"}]

scoreboard players set #remaining_time switch.data 910
scoreboard players set #cigogne_seconds switch.data -10
scoreboard players set #cigogne_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard objectives add switch.temp.kill playerKillCount
scoreboard objectives add switch.temp.sneak dummy
scoreboard objectives setdisplay list switch.health

execute as @a[tag=!detached] run function switch:modes/cigogne/give_items

