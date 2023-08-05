
## Fonction executée lors du lancement de la partie

clear @a
effect clear @a
gamemode adventure @a
team leave @a

effect give @a weakness infinite 255 true
effect give @a saturation infinite 255 true
effect give @a resistance infinite 255 true
effect give @a regeneration infinite 255 true
effect give @a night_vision infinite 255 true
difficulty normal
time set 0
execute if predicate switch:chance/0.33 run time add 6000
execute if predicate switch:chance/0.33 run time add 6000
execute if predicate switch:chance/0.33 run time add 6000
weather clear

## Téléportation des joueurs
scoreboard players set #do_spreadplayers switch.data 1
function switch:choose_map_for/moutron
execute if data storage switch:main {map:"whity_lab"} run function switch:modes/moutron/spread_players/whity_lab

gamerule showDeathMessages false
gamerule keepInventory true
gamerule fallDamage false

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Moutron, 10 secondes de préparation et soyez le dernier en vie !"}]

scoreboard objectives add switch.temp.moutron dummy
scoreboard objectives add switch.temp.color dummy

scoreboard players set #moutron_seconds switch.data -10
scoreboard players set #moutron_ticks switch.data -100
scoreboard players set #process_end switch.data 0
scoreboard players set #life_time switch.data 20

# Summon karts
scoreboard players set #next_model switch.data 0
execute as @a at @s run function switch:modes/moutron/summon_kart

