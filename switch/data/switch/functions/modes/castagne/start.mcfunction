
gamemode survival @a[tag=!detached]
effect give @a[tag=!detached] blindness 10 255 true
effect give @a[tag=!detached] weakness 10 255 true
effect give @a[tag=!detached] saturation 10 255 true
effect give @a[tag=!detached] resistance 10 255 true
effect give @a[tag=!detached] regeneration 10 255 true
function switch:utils/set_dynamic_time

## Téléportation des joueurs
scoreboard players set #do_spreadplayers switch.data 1
function switch:choose_map_for/castagne

gamerule naturalRegeneration false

tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la Castagne, 10 secondes de préparation et soyez le dernier en vie !"}]

scoreboard players set #remaining_time switch.data 910
scoreboard players set #castagne_seconds switch.data -10
scoreboard players set #castagne_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard objectives setdisplay list switch.health

scoreboard objectives add switch.temp.kill playerKillCount
scoreboard objectives add switch.temp.cooldown_kill dummy

data modify storage switch:temp castagne set value []
scoreboard players set #initial_count switch.data 0
execute as @a[tag=!detached] run function switch:modes/castagne/give_items

