
##Fonction executée lors du lancement de la partie

kill @e[type=!player,type=!marker]

clear @a
effect clear @a
gamemode survival @a
team leave @a
tag @a add switch.alive

kill @e[type=item]
kill @e[type=arrow]

effect give @a resistance 10 255 true
effect give @a saturation 10 255 true
effect give @a regeneration 10 255 true
effect give @a weakness 10 2 true
difficulty normal
time set 0
execute if predicate switch:chance/0.33 run time add 6000
execute if predicate switch:chance/0.33 run time add 6000
execute if predicate switch:chance/0.33 run time add 6000
weather clear

##Placement de la map et des joueurs + give d'items
data modify storage switch:main maps_to_choose set value ["traitor_original", "zone_51", "spectre_original", "mushroom_plains"]
function switch:engine/maps/load
execute if data storage switch:main {map:"traitor_original"} run spreadplayers 1500 1500 1 100 under 160 false @a
execute if data storage switch:main {map:"zone_51"} run spreadplayers 2000 2000 1 50 under 170 false @a
execute if data storage switch:main {map:"spectre_original"} run spreadplayers 2500 2500 1 30 under 185 false @a
execute if data storage switch:main {map:"mushroom_plains"} run spreadplayers 4000 4000 1 50 under 150 false @a
execute as @a at @s run function switch:modes/traitors_game/give_items

gamerule mobGriefing true
gamerule showDeathMessages false
gamerule fallDamage true
gamerule naturalRegeneration true
gamerule keepInventory true

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Traitors Game, tenez-vous prêt !"}]
execute as @a at @s run playsound entity.player.levelup ambient @s

scoreboard players set #traitors_game_seconds switch.data -10
scoreboard players set #traitors_game_ticks switch.data 0
scoreboard players set #process_end switch.data 0

scoreboard objectives add switch.temp.id dummy
scoreboard objectives add switch.temp.cooldown dummy
scoreboard objectives add switch.temp.deathCount deathCount

team add switch.temp.detective
team modify switch.temp.detective color green

#Choix des rôles
scoreboard players set #next_role switch.data 0
scoreboard players set #next_player_id switch.data 0
tag @a remove switch.traitors_game.detective
tag @a remove switch.traitors_game.traitor
tag @a remove switch.traitors_game.ninja
tag @a remove switch.traitors_game.second_life
tag @a remove switch.traitors_game.innocent
tag @a remove switch.traitors_game.traitor
tag @a remove switch.traitors_game.big_traitor
execute as @a[sort=random] at @s run function switch:modes/traitors_game/roles/

