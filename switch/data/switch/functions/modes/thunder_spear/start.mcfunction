
gamemode survival @a[tag=!detached]
effect give @a[tag=!detached] blindness 5 255 true
effect give @a[tag=!detached] weakness 5 255 true
effect give @a[tag=!detached] saturation 5 255 true
effect give @a[tag=!detached] resistance 5 255 true
function switch:utils/set_dynamic_time

## Téléportation des joueurs
scoreboard players set #do_spreadplayers switch.data 1
function switch:choose_map_for/thunder_spear
execute as @a[tag=!detached] run function switch:modes/thunder_spear/give_and_teleport

gamerule keepInventory true
gamerule fallDamage false

tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Thunder Spear, 10 secondes de préparation et tuez le plus de gens !"}]

scoreboard players set #thunder_spear_seconds switch.data -5
scoreboard players set #thunder_spear_ticks switch.data 0
scoreboard players set #remaining_time switch.data 155
scoreboard players set #process_end switch.data 0
scoreboard objectives add switch.temp.reload dummy
scoreboard objectives add switch.temp.kills playerKillCount {"text":" Joueurs tués ","color":"red"}
scoreboard objectives setdisplay sidebar switch.temp.kills
scoreboard objectives setdisplay list switch.health
scoreboard players set @a[tag=!detached] switch.temp.kills 0

