##Fonction executée lors du lancement de la partie

clear @a
effect clear @a
gamemode adventure @a
team join switch.no_pvp @a
tag @a add switch.alive

kill @e[type=item]

effect give @a saturation 2 255 true
effect give @a regeneration 3 255 true

difficulty hard
time set 13245
weather clear

##Placement de la map et des joueurs + give d'items
execute unless data storage switch:main traitors_game_maps[0] run data modify storage switch:main traitors_game_maps set value ["spectre_original", "mushroom_plains"]
data modify storage switch:main maps_to_choose set from storage switch:main traitors_game_maps
function switch:engine/maps/load
data modify storage switch:main copy set from storage switch:main traitors_game_maps
function switch:engine/maps/storage_map_list/remove_from_storage
data modify storage switch:main traitors_game_maps set from storage switch:main new
# L'info de quelle map est-ce sera utilisée pour summon la nourriture à des endroits aléatoirement choisis selon la map
execute if data storage switch:main {map:"spectre_original"} run scoreboard players set #feed_fast.map switch.data 1
execute if data storage switch:main {map:"mushroom_plains"} run scoreboard players set #feed_fast.map switch.data 2
execute if score #feed_fast.map switch.data matches 1 run spreadplayers 2500 2500 1 30 under 185 false @a
execute if score #feed_fast.map switch.data matches 2 run spreadplayers 4000 4000 1 50 under 150 false @a

gamerule mobGriefing false
gamerule showDeathMessages false
gamerule keepInventory true
gamerule fallDamage true
gamerule naturalRegeneration true

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Feed Fast, Préparez vous à bientôt devoir manger pour éviter un funeste destin !"}]

scoreboard players set #remaining_time switch.data 605
scoreboard players set #feed_fast_seconds switch.data -5
scoreboard players set #feed_fast_ticks switch.data 0
scoreboard players set #process_end switch.data 0

scoreboard players set #feed_fast.is_x5_sec switch.data 0

scoreboard objectives add switch.temp.deathCount deathCount
