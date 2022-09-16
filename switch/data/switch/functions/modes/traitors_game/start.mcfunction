
##Fonction executée lors du lancement de la partie

clear @a
effect clear @a
gamemode spectator @a
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

##Placement de la map
forceload add 1409 1424 1591 1577
schedule function switch:modes/traitors_game/clones/10 40t
schedule function switch:modes/traitors_game/clones/20 41t
schedule function switch:modes/traitors_game/clones/30 42t
schedule function switch:modes/traitors_game/clones/40 43t
schedule function switch:modes/traitors_game/clones/50 44t
schedule function switch:modes/traitors_game/clones/60 45t
schedule function switch:modes/traitors_game/clones/70 46t
schedule function switch:modes/traitors_game/clones/80 47t
schedule function switch:modes/traitors_game/clones/90 48t
schedule function switch:modes/traitors_game/clones/95 49t
schedule function switch:modes/traitors_game/clones/100 50t

##Téléportation des joueurs + give d'items
tp @a[sort=random] 1500 150 1500 
execute as @a at @a run function switch:modes/traitors_game/give_items

gamerule mobGriefing true
gamerule showDeathMessages false
gamerule fallDamage true
gamerule naturalRegeneration true
gamerule keepInventory true

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Traitors Game, préparation du terrain..."}]

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
execute as @a at @s run function switch:modes/traitors_game/roles/main

