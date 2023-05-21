## Fonction executée lors du lancement de la partie

clear @a
effect clear @a
gamemode adventure @a
team join switch.no_pvp @a
tag @a add switch.alive

kill @e[type=item]

effect give @a resistance 5 255 true
effect give @a saturation 10 255 true
effect give @a regeneration 5 255 true

difficulty hard
time set 0
execute if predicate switch:chance/0.33 run time add 6000
execute if predicate switch:chance/0.33 run time add 6000
execute if predicate switch:chance/0.33 run time add 6000
weather clear

## Placement de la map et des joueurs + give d'items
scoreboard players set #do_spreadplayers switch.data 1
function switch:choose_map_for/feed_fast

gamerule mobGriefing false
gamerule showDeathMessages false
gamerule keepInventory true
gamerule fallDamage true
gamerule naturalRegeneration true

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Feed Fast, vous avez 5 secondes pour vous préparer à devoir manger pour éviter un funeste destin !"}]

scoreboard players set #remaining_time switch.data 50
scoreboard players set #feed_fast_seconds switch.data -5
scoreboard players set #feed_fast_ticks switch.data 0
scoreboard players set #process_end switch.data 0

scoreboard objectives add switch.temp.deathCount deathCount
scoreboard objectives setdisplay list switch.health

