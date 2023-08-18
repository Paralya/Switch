
## Fonction executée lors du lancement de la partie

clear @a
effect clear @a
gamemode adventure @a
team join switch.no_pvp @a
tag @a add switch.alive


effect give @a saturation infinite 255 true
effect give @a regeneration infinite 255 true
effect give @a weakness infinite 2 true
difficulty peaceful
time set 18000
weather clear
function switch:modes/twittos_de_merde/give_items

gamerule mobGriefing false
gamerule showDeathMessages false
gamerule naturalRegeneration false
gamerule keepInventory true

## Placement de la map et des joueurs + give d'items
scoreboard players set #is_adventure switch.data 1
scoreboard players set #do_spreadplayers switch.data 1
function switch:choose_map_for/twittos_de_merde

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Twittos de MERDE ! Ça commence dans 5 secondes !"}]
tellraw @a {"text":"Ne signez surtout pas vos livres ! On ne pourra pas voir vos tweets.","color":"red"}
scoreboard players set #remaining_time switch.data 600
scoreboard players set #twittos_de_merde_seconds switch.data -5
scoreboard players set #twittos_de_merde_seconds_mdj switch.data -5
scoreboard players set #twittos_de_merde_ticks switch.data 0
scoreboard players set #process_end switch.data 0

scoreboard objectives add switch.temp.deathCount deathCount

