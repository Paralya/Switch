
##Fonction executée lors du lancement de la partie

kill @e[type=!player,type=!marker]

clear @a
effect clear @a
gamemode survival @a
team leave @a
tag @a add switch.alive

kill @e[type=item]
kill @e[type=arrow]

effect give @a saturation 999999 255 true
effect give @a resistance 15 255 true
effect give @a regeneration 10 255 true
effect give @a weakness 15 255 true
effect give @a blindness 10 255 true
effect give @a slowness 8 255 true
difficulty normal
time set 0
execute if predicate switch:chance/0.33 run time add 6000
execute if predicate switch:chance/0.33 run time add 6000
execute if predicate switch:chance/0.33 run time add 6000
weather clear

##Placement de la map et des joueurs
execute unless data storage switch:main spectres_game_maps[0] run data modify storage switch:main spectres_game_maps set value ["spectre_original"]
data modify storage switch:main maps_to_choose set from storage switch:main spectres_game_maps
function switch:engine/maps/load
data modify storage switch:main copy set from storage switch:main spectres_game_maps
function switch:engine/maps/storage_map_list/remove_from_storage
data modify storage switch:main spectres_game_maps set from storage switch:main new
execute if data storage switch:main {map:"spectre_original"} run spreadplayers 2500 2500 1 30 under 185 false @a

gamerule mobGriefing true
gamerule showDeathMessages false
gamerule fallDamage true
gamerule naturalRegeneration false
gamerule keepInventory true

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Spectres Game, tenez-vous prêt vous avez 15 secondes de resistance !"}]
execute as @a at @s run playsound entity.player.levelup ambient @s

scoreboard players set #remaining_time switch.data 901
scoreboard players set #spectres_game_seconds switch.data -1
scoreboard players set #spectres_game_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #cut_clean switch.data 1

scoreboard objectives add switch.temp.id dummy
scoreboard objectives add switch.temp.cooldown dummy
scoreboard objectives add switch.temp.deathCount deathCount
scoreboard objectives add switch.temp.playerKillCount playerKillCount {"text":" Nombre de Kills ","color":"aqua"}
scoreboard objectives setdisplay sidebar switch.temp.playerKillCount

#Choix des rôles + give d'items
team add switch.temp.visible
team add switch.temp.spectre
team modify switch.temp.visible color green
team modify switch.temp.spectre color yellow
scoreboard players set #next_role switch.data 0
scoreboard players set #next_player_id switch.data 0
tag @a remove switch.spectres_game.visible
tag @a remove switch.spectres_game.spectre
execute as @a[sort=random] at @s run function switch:modes/spectres_game/roles/
execute as @a at @s run function switch:modes/spectres_game/give_items

