
clear @a[tag=!switch.detached]
effect clear @a[tag=!switch.detached]
gamemode spectator @a[tag=!switch.detached]
team leave @a[tag=!switch.detached]

kill @e[type=item]

effect give @a[tag=!switch.detached] saturation infinite 255 true
effect give @a[tag=!switch.detached] regeneration 5 255 true
difficulty normal
time set 6000
weather clear

## Téléportation des joueurs
function switch:choose_map_for/mlg_a_coudre

gamerule showDeathMessages false
gamerule naturalRegeneration false
gamerule keepInventory true

tellraw @a[tag=!switch.detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de MLG à Coudre, on commence direct !"}]

scoreboard players set #mlg_a_coudre_seconds switch.data 0
scoreboard players set #mlg_a_coudre_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #detect_end switch.data 0
scoreboard objectives add switch.temp.order dummy
scoreboard objectives add switch.temp.lives dummy {"text":" Vies Restantes ","color":"red"}
scoreboard objectives setdisplay sidebar switch.temp.lives

## Order selection
scoreboard players set #position switch.data 0
scoreboard players set #next switch.data 0
execute as @a[tag=!switch.detached,sort=random] run function switch:modes/mlg_a_coudre/define_order
scoreboard players operation #max switch.data = #position switch.data

