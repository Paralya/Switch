
## Fonction executée lors du lancement de la partie

clear @a
effect clear @a
gamemode survival @a
team leave @a

kill @e[type=!player,type=!marker]
kill @e[type=!player,type=!marker]

difficulty normal
time set 0
execute if predicate switch:chance/0.33 run time add 6000
execute if predicate switch:chance/0.33 run time add 6000
execute if predicate switch:chance/0.33 run time add 6000
weather clear

## Téléportation des joueurs
scoreboard players set #do_spreadplayers switch.data 1
function switch:choose_map_for/thunder_spear

gamerule keepInventory true
gamerule fallDamage false

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Thunder Spear, 10 secondes de préparation et tuez le plus de gens !"}]

scoreboard players set #thunder_spear_seconds switch.data -5
scoreboard players set #thunder_spear_ticks switch.data 0
scoreboard players set #remaining_time switch.data 155
scoreboard players set #process_end switch.data 0
scoreboard objectives add switch.temp.deathCount deathCount
scoreboard objectives add switch.temp.kills playerKillCount {"text":" Joueurs tués ","color":"red"}
scoreboard objectives setdisplay sidebar switch.temp.kills
scoreboard objectives setdisplay list switch.health
scoreboard players set @a switch.temp.kills 0


## Give Items
execute as @a run function switch:modes/thunder_spear/give_and_teleport
effect give @a blindness 5 255 true
effect give @a weakness 5 255 true
effect give @a saturation 5 255 true
effect give @a resistance 5 255 true
effect give @a regeneration 5 255 true

