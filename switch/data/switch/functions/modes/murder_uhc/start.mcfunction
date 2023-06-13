
## Fonction executée lors du lancement de la partie

kill @e[type=!player,type=!marker]
kill @e[type=!player,type=!marker]

clear @a
effect clear @a
gamemode survival @a
team leave @a
tag @a add switch.alive

effect give @a resistance 10 255 true
effect give @a regeneration 10 255 true
effect give @a weakness 10 255 true
difficulty normal
time set 0
execute if predicate switch:chance/0.33 run time add 6000
execute if predicate switch:chance/0.33 run time add 6000
execute if predicate switch:chance/0.33 run time add 6000
weather clear

## Placement de la map et des joueurs + give d'items
scoreboard players set #do_spreadplayers switch.data 1
function switch:choose_map_for/traitors_game

gamerule mobGriefing true
gamerule showDeathMessages false
gamerule fallDamage true
gamerule naturalRegeneration false
gamerule keepInventory true

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Traitors Game, tenez-vous prêt !"}]
execute as @a at @s run playsound entity.player.levelup ambient @s

scoreboard players set #remaining_time switch.data 1210
scoreboard players set #traitors_game_seconds switch.data -10
scoreboard players set #traitors_game_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #cut_clean switch.data 1

scoreboard objectives add switch.temp.id dummy
scoreboard objectives add switch.temp.cooldown dummy
scoreboard objectives add switch.temp.deathCount deathCount
scoreboard objectives add switch.temp.sidebar dummy {"text":"Rôles restants","color":"gold"}
scoreboard objectives setdisplay sidebar switch.temp.sidebar

team add switch.temp.visible
team modify switch.temp.visible color green

team add switch.temp.sidebar.5
team add switch.temp.sidebar.4
team add switch.temp.sidebar.3
team add switch.temp.sidebar.2
team add switch.temp.sidebar.1
team modify switch.temp.sidebar.5 suffix [{"text":"Inspecteur : ","color":"green"},{"text":"1","color":"yellow"}]
team modify switch.temp.sidebar.4 suffix [{"text":"Ninja : ","color":"green"},{"text":"0","color":"yellow"}]
team modify switch.temp.sidebar.3 suffix [{"text":"Innocent : ","color":"green"},{"text":"0","color":"yellow"}]
team modify switch.temp.sidebar.2 suffix [{"text":"Traitre : ","color":"red"},{"text":"0","color":"yellow"}]
team modify switch.temp.sidebar.1 suffix [{"text":"Gros Traitre : ","color":"dark_red"},{"text":"0","color":"yellow"}]
team modify switch.temp.sidebar.5 color green
team modify switch.temp.sidebar.4 color green
team modify switch.temp.sidebar.3 color green
team modify switch.temp.sidebar.2 color red
team modify switch.temp.sidebar.1 color dark_red
team join switch.temp.sidebar.5 Ins
team join switch.temp.sidebar.4 Nin
team join switch.temp.sidebar.3 Inn
team join switch.temp.sidebar.2 Tra
team join switch.temp.sidebar.1 Gro
scoreboard players set Ins switch.temp.sidebar 5
scoreboard players set Nin switch.temp.sidebar 4
scoreboard players set Inn switch.temp.sidebar 3
scoreboard players set Tra switch.temp.sidebar 2
scoreboard players set Gro switch.temp.sidebar 1

# Choix des rôles
scoreboard players set #next_role switch.data 0
scoreboard players set #next_player_id switch.data 0
tag @a remove switch.traitors_game.detective
tag @a remove switch.traitors_game.ninja
tag @a remove switch.traitors_game.second_life
tag @a remove switch.traitors_game.innocent
tag @a remove switch.traitors_game.traitor
tag @a remove switch.traitors_game.big_traitor
execute as @a[sort=random] at @s run function switch:modes/traitors_game/roles/
execute as @a at @s run function switch:modes/traitors_game/give_items
function switch:modes/traitors_game/update_sidebar

