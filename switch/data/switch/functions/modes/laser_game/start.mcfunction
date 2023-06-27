
## Fonction executée lors du lancement de la partie

clear @a
effect clear @a
gamemode adventure @a
team add switch.laser_game.blue
team add switch.laser_game.red
team modify switch.laser_game.blue color blue
team modify switch.laser_game.blue seeFriendlyInvisibles true
team modify switch.laser_game.blue nametagVisibility never
team modify switch.laser_game.red color red
team modify switch.laser_game.red seeFriendlyInvisibles true
team modify switch.laser_game.red nametagVisibility never

effect give @a saturation infinite 255 true
effect give @a regeneration 5 255 true
effect give @a weakness infinite 255 true
time set 18000

## Traitement des joueurs
scoreboard players set #is_adventure switch.data 1
function switch:choose_map_for/laser_game

scoreboard players set #team_boolean switch.data 0
execute as @a[sort=random] run function switch:modes/laser_game/teleport_players

gamerule fallDamage false

tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Laser Game, tuez le plus d'ennemis possible !"}]

scoreboard objectives add switch.temp.individual_points dummy {"text":" Points Individuels ","color":"yellow"}
scoreboard objectives add switch.temp.shield dummy
scoreboard objectives add switch.temp.cooldown dummy
scoreboard objectives add switch.temp.dead_cooldown dummy
scoreboard objectives add switch.temp.sidebar dummy {"text":"Points","color":"yellow"}
scoreboard objectives setdisplay sidebar switch.temp.sidebar

scoreboard players set #laser_game_seconds switch.data 0
scoreboard players set #laser_game_ticks switch.data 0
scoreboard players set #blue_points switch.data 0
scoreboard players set #red_points switch.data 0
scoreboard players set #remaining_time switch.data 150
scoreboard players set #process_end switch.data 0
scoreboard players set #base_reload switch.data 15

team add switch.temp.sidebar.3
team add switch.temp.sidebar.2
team add switch.temp.sidebar.1
team modify switch.temp.sidebar.3 prefix [{"text":"Temps restant : "},{"text":"2","color":"yellow"},{"text":"m"}]
team modify switch.temp.sidebar.2 prefix [{"text":"Équipe Bleue : ","color":"blue"}]
team modify switch.temp.sidebar.1 prefix [{"text":"Équipe Rouge : ","color":"red"}]
team modify switch.temp.sidebar.3 suffix [{"text":"30","color":"yellow"},{"text":"s"}]
team modify switch.temp.sidebar.2 suffix [{"text":"0","color":"yellow"}]
team modify switch.temp.sidebar.1 suffix [{"text":"0","color":"yellow"}]
team modify switch.temp.sidebar.2 color blue
team modify switch.temp.sidebar.1 color red
team join switch.temp.sidebar.3 §3
team join switch.temp.sidebar.2 §2
team join switch.temp.sidebar.1 §1
scoreboard players set §3 switch.temp.sidebar 3
scoreboard players set §2 switch.temp.sidebar 2
scoreboard players set §1 switch.temp.sidebar 1


