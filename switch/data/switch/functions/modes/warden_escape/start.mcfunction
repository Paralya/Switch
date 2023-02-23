
##Fonction executée lors du lancement de la partie

clear @a
effect clear @a
gamemode adventure @a
team join switch.no_pvp @a
tag @a add switch.alive

kill @e[type=warden]
kill @e[type=item]

effect give @a saturation 99999 255 true
effect give @a regeneration 5 255 true
effect give @a weakness 99999 2 true
difficulty normal
time set 18000
weather clear

##Téléportation des joueurs
execute unless data storage switch:main warden_maps[0] run data modify storage switch:main warden_maps set value ["laser_game", "warden_forest", "cathedrale_liege"]
data modify storage switch:main maps_to_choose set from storage switch:main warden_maps
function switch:maps/load
data modify storage switch:main copy set from storage switch:main warden_maps
function switch:maps/storage_map_list/remove_from_storage
data modify storage switch:main warden_maps set from storage switch:main new

gamerule mobGriefing false
gamerule showDeathMessages false
gamerule naturalRegeneration false
gamerule keepInventory true

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Warden Escape, tenez-vous prêt car vous avez un temps de préparation de 10 secondes !"}]

scoreboard players set #remaining_time switch.data 70
scoreboard players set #warden_escape_seconds switch.data -10
scoreboard players set #warden_escape_ticks switch.data 0
scoreboard players set #process_end switch.data 0

scoreboard objectives add switch.temp.deathCount deathCount

execute as @a at @s run function switch:modes/warden_escape/give_items

