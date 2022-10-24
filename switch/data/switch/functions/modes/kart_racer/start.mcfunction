
##Fonction executée lors du lancement de la partie

clear @a
effect clear @a
gamemode adventure @a
team join switch.no_pvp @a
tag @a add switch.playing

kill @e[type=item]
kill @e[type=arrow]

effect give @a saturation 99999 255 true
effect give @a regeneration 5 255 true
difficulty normal
time set 18000
weather clear

##Téléportation des joueurs + give d'items
data modify storage switch:main maps_to_choose set value ["kart_racer_1"]
function switch:engine/maps/load
execute as @a at @s run function switch:modes/kart_racer/give_items

gamerule mobGriefing false
gamerule showDeathMessages false
gamerule naturalRegeneration false
gamerule keepInventory true

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Mario Kart, tenez-vous prêt car vous avez un temps de préparation de 10 secondes !"}]

scoreboard players set #kart_racer_seconds switch.data -10
scoreboard players set #kart_racer_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #detect_end switch.data 0

scoreboard objectives add switch.temp.dx dummy
scoreboard objectives add switch.temp.dy dummy
scoreboard objectives add switch.temp.dz dummy
scoreboard objectives add switch.temp.id dummy
scoreboard objectives add switch.checkpoint dummy
scoreboard objectives add switch.lap dummy
scoreboard players set @a switch.checkpoint 0
scoreboard players set @a switch.lap 0

#Checkpoint remember kart state (for respawn)
data modify storage switch:main respawn_states set value [{id:0,Pos:[0.d,0.d,0.d],Rotation:[0.f,0.f],Motion:[0.d,0.d,0.d],Tags:[],scores:{cp_id:0,shopping_kart:{engine:0,max_engine:0,motion_x:0,motion_z:0,predicted_pos_x:0,predicted_pos_z:0,old_pos_x:0,old_pos_y:0,old_pos_z:0,booster_timer:0}}}]

##Number of checkpoints and laps per map
scoreboard players set #total_laps switch.data 3
scoreboard players set #total_checkpoints switch.data 1
execute if data storage switch:main {map:"kart_racer_1"} run scoreboard players set #total_checkpoints switch.data 4

#summon marker 1 1 1 {Tags:["switch.checkpoint"],data:{cp:0, height:5, length:5, width:3}}
#summon marker 1 1 1 {Tags:["switch.checkpoint"],data:{cp:1, facing:1b, height:5, length:5, width:3}}
scoreboard players set #next_id switch.temp.id 0
execute as @e[type=marker,tag=switch.checkpoint] run function switch:modes/kart_racer/checkpoints_setup

##TODO :
#Ajouter un système de préparation
#Système de checkpoint
#Système de respawn
#Système de tours
#Système de victoire

