
##Fonction executée lors du lancement de la partie

clear @a
effect clear @a
gamemode adventure @a
tag @a add switch.playing

kill @e[type=!player]
kill @e[type=!player]

title @a times 5 20 5
effect give @a saturation 99999 255 true
effect give @a regeneration 99999 255 true
effect give @a resistance 99999 255 true
effect give @a levitation 10 255 true
difficulty normal
time set 0
execute if predicate switch:chance/0.33 run time add 6000
execute if predicate switch:chance/0.33 run time add 6000
execute if predicate switch:chance/0.33 run time add 6000
weather clear

gamerule mobGriefing false
gamerule showDeathMessages false
gamerule naturalRegeneration false
gamerule keepInventory true
gamerule fallDamage false

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Kart Racer, tenez-vous prêt car vous avez un temps de préparation de 10 secondes !"}]

scoreboard players set #remaining_time switch.data 310
scoreboard players set #kart_racer_seconds switch.data -10
scoreboard players set #kart_racer_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #detect_end switch.data 0

scoreboard objectives add switch.temp dummy
scoreboard objectives add switch.temp.old_speed dummy
scoreboard objectives add switch.temp.compteur dummy
scoreboard objectives add switch.temp.dx dummy
scoreboard objectives add switch.temp.dy dummy
scoreboard objectives add switch.temp.dz dummy
scoreboard objectives add switch.temp.id dummy
scoreboard objectives add switch.temp.vote_collisions dummy
scoreboard objectives add switch.temp.change_map dummy
scoreboard objectives add switch.temp.checkpoint dummy
scoreboard objectives add switch.temp.classement dummy
scoreboard objectives add switch.temp.sidebar dummy {"text":" Classement ","color":"dark_purple"}
scoreboard objectives add switch.respawn_cp_id dummy
scoreboard objectives add switch.hard_respawn_cp_id dummy
scoreboard objectives add switch.checkpoint dummy
scoreboard objectives add switch.lap dummy
scoreboard objectives add switch.effects.last dummy
scoreboard objectives add switch.effects.timer dummy
scoreboard players set @a switch.respawn_cp_id -1
scoreboard players set @a switch.hard_respawn_cp_id -1
scoreboard players set @a switch.temp.checkpoint 0
scoreboard players set @a switch.checkpoint 0
scoreboard players set @a switch.lap 1
scoreboard objectives setdisplay sidebar switch.temp.sidebar

team add switch.temp.kart
team add switch.temp.1
team add switch.temp.2
team add switch.temp.3
team add switch.temp.4
team add switch.temp.5
team add switch.temp.6
team add switch.temp.7
team add switch.temp.8
team add switch.temp.9
team add switch.temp.10
team add switch.temp.10+
team modify switch.temp.kart collisionRule never
team modify switch.temp.1 collisionRule never
team modify switch.temp.2 collisionRule never
team modify switch.temp.3 collisionRule never
team modify switch.temp.4 collisionRule never
team modify switch.temp.5 collisionRule never
team modify switch.temp.6 collisionRule never
team modify switch.temp.7 collisionRule never
team modify switch.temp.8 collisionRule never
team modify switch.temp.9 collisionRule never
team modify switch.temp.10 collisionRule never
team modify switch.temp.10+ collisionRule never
team modify switch.temp.1 suffix {"text":" [1er]","color":"#FFE700"}
team modify switch.temp.2 suffix {"text":" [2ème]","color":"#C0C0C0"}
team modify switch.temp.3 suffix {"text":" [3ème]","color":"#CD7F32"}
team modify switch.temp.4 suffix {"text":" [4ème]","color":"#696969"}
team modify switch.temp.5 suffix {"text":" [5ème]","color":"#696969"}
team modify switch.temp.6 suffix {"text":" [6ème]","color":"#696969"}
team modify switch.temp.7 suffix {"text":" [7ème]","color":"#696969"}
team modify switch.temp.8 suffix {"text":" [8ème]","color":"#696969"}
team modify switch.temp.9 suffix {"text":" [9ème]","color":"#696969"}
team modify switch.temp.10 suffix {"text":" [10ème]","color":"#696969"}
team modify switch.temp.10+ suffix {"text":" [Pas Ouf]","color":"#9200DF"}

##Number of checkpoints and laps per map
scoreboard players set #total_laps switch.data 3
scoreboard players set #total_checkpoints switch.data 1

## Téléportation des joueurs + give d'items
execute unless data storage switch:main kart_racer_maps[0] run data modify storage switch:main kart_racer_maps set value ["bowser_castle", "trackmania_stadium_1", "trackmania_stadium_2", "snow_travel", "mario_circuit", "plains_routine", "sakura_land", "hills_land", "airship_fortress", "dk_mountain", "clock_circuit"]
data modify storage switch:main maps_to_choose set from storage switch:main kart_racer_maps
function switch:maps/load
data modify storage switch:main copy set from storage switch:main kart_racer_maps
function switch:maps/storage_map_list/remove_from_storage
data modify storage switch:main kart_racer_maps set from storage switch:main new

execute as @a at @s run function switch:modes/kart_racer/give_items

schedule function switch:modes/kart_racer/post_load 9s

