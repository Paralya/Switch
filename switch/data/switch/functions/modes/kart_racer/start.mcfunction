
##Fonction executée lors du lancement de la partie

clear @a
effect clear @a
gamemode adventure @a
team join switch.no_pvp @a
tag @a add switch.playing

kill @e[type=!player]

effect give @a saturation 99999 255 true
effect give @a regeneration 99999 255 true
effect give @a resistance 99999 255 true
difficulty normal
time set 6000
weather clear

gamerule mobGriefing false
gamerule showDeathMessages false
gamerule naturalRegeneration false
gamerule keepInventory true
gamerule fallDamage false

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Kart Racer, tenez-vous prêt car vous avez un temps de préparation de 10 secondes !"}]

scoreboard players set #remaining_time switch.data 300
scoreboard players set #kart_racer_seconds switch.data -10
scoreboard players set #kart_racer_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #detect_end switch.data 0

scoreboard objectives add switch.temp.dx dummy
scoreboard objectives add switch.temp.dy dummy
scoreboard objectives add switch.temp.dz dummy
scoreboard objectives add switch.temp.id dummy
scoreboard objectives add switch.temp.checkpoint dummy {"text":"Checkpoints passés","color":"dark_purple"}
scoreboard objectives add switch.respawn_cp_id dummy
scoreboard objectives add switch.checkpoint dummy
scoreboard objectives add switch.lap dummy
scoreboard players set @a switch.respawn_cp_id -1
scoreboard players set @a switch.temp.checkpoint 0
scoreboard players set @a switch.checkpoint 0
scoreboard players set @a switch.lap 1
scoreboard objectives setdisplay sidebar switch.temp.checkpoint

##Number of checkpoints and laps per map
scoreboard players set #total_laps switch.data 3
scoreboard players set #total_checkpoints switch.data 1

##Téléportation des joueurs + give d'items
data modify storage switch:main maps_to_choose set value ["bowser_castle"]
function switch:engine/maps/load
execute as @a at @s run function switch:modes/kart_racer/give_items
scoreboard players operation #modulo switch.data = #total_checkpoints switch.data
scoreboard players add #modulo switch.data 1

#Checkpoint remember kart state (for respawn)
data modify storage switch:main respawn_states set value []
scoreboard players set #next_id switch.temp.id 0
execute as @e[type=marker,tag=switch.checkpoint] run function switch:modes/kart_racer/checkpoints/setup
execute as @a run function switch:modes/kart_racer/player_setup_id

