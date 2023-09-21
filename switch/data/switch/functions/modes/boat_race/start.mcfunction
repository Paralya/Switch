
## Fonction executée lors du lancement de la partie

# Map
scoreboard players set #is_adventure switch.data 1
function switch:choose_map_for/boat_race

clear @a
effect clear @a
gamemode adventure @a
team join switch.no_pvp @a
scoreboard players set @a switch.alive 1

kill @e[type=item]
kill @e[type=arrow]

effect give @a saturation infinite 255 true
effect give @a regeneration 5 255 true
effect give @a weakness infinite 2 true
effect give @a resistance infinite 255 true
difficulty normal
time set 13475
weather clear

## Give du bateau coffre (pour pas qu'ils soit deux dans le bateau)
execute as @a at @s run function switch:modes/boat_race/give_items

gamerule showDeathMessages false
gamerule naturalRegeneration false
gamerule keepInventory true

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Boat Race. Vous avez 8 secondes pour placer votre bateau et y rentrer ainsi que 8 minutes maximum pour finir la course !"}]

scoreboard players set #remaining_time switch.data 488
scoreboard players set #boat_race_seconds switch.data -8
scoreboard players set #boat_race_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #detect_end switch.data 0

scoreboard objectives add switch.temp.deathCount deathCount

