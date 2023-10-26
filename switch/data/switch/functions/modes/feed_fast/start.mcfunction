
effect give @a resistance infinite 255 true
effect give @a regeneration infinite 255 true
difficulty hard
function switch:utils/set_dynamic_time

## Placement de la map et des joueurs + give d'items
scoreboard players set #is_adventure switch.data 1
scoreboard players set #do_spreadplayers switch.data 1
function switch:choose_map_for/feed_fast

gamerule showDeathMessages false
gamerule keepInventory true

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Feed Fast, vous avez 5 secondes pour vous préparer à devoir manger un maximum !"}]

scoreboard players set #remaining_time switch.data 50
scoreboard players set #feed_fast_seconds switch.data -5
scoreboard players set #feed_fast_ticks switch.data 0
scoreboard players set #process_end switch.data 0

scoreboard objectives add switch.temp.previous_food dummy
scoreboard objectives add switch.temp.points dummy {"text":" Points ","color":"red"}
scoreboard objectives setdisplay sidebar switch.temp.points

scoreboard players set @a switch.temp.previous_food 20

