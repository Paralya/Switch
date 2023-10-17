
## Fonction executée lors du lancement de la partie

clear @a
effect clear @a
gamemode survival @a
team leave @a

kill @e[type=!player,type=!marker]
kill @e[type=!player,type=!marker]

effect give @a blindness 10 255 true
effect give @a weakness 10 255 true
effect give @a saturation 10 255 true
effect give @a resistance 10 255 true
effect give @a regeneration 10 255 true
difficulty normal
time set 0
execute if predicate switch:chance/0.33 run time add 6000
execute if predicate switch:chance/0.33 run time add 6000
execute if predicate switch:chance/0.33 run time add 6000
weather clear

## Téléportation des joueurs
scoreboard players set #do_spreadplayers switch.data 1
function switch:choose_map_for/castagne

gamerule naturalRegeneration false

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la Castagne, 10 secondes de préparation et soyez le dernier en vie !"}]

scoreboard players set #remaining_time switch.data 910
scoreboard players set #castagne_seconds switch.data -10
scoreboard players set #castagne_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard objectives add switch.temp.deathCount deathCount
scoreboard objectives setdisplay list switch.health


## Give Items
execute as @a run function switch:modes/castagne/give_items

