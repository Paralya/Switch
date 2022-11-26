
##Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #traitors_game_ticks switch.data 1

tp @e[type=vex] 0 -10000 0
execute as @a[tag=switch.to_tp] run function switch:modes/traitors_game/teleport_to_death
execute as @a[tag=switch.ninja_death] run function switch:modes/traitors_game/death/to_tp
execute at @a[gamemode=!spectator,tag=switch.traitors_game.detective] run particle glow ~ ~ ~ 0.2 0 0.2 0 5

execute as @a[scores={switch.temp.deathCount=1..},x=0,y=69,z=0,distance=..10] run function switch:modes/traitors_game/death/player
execute if score #traitors_game_seconds switch.data matches 1..1200 as @e[type=marker,tag=switch.temp.player,tag=!switch.player_dead] run function switch:modes/traitors_game/death/detect
execute if score #traitors_game_seconds switch.data matches 1..1200 as @e[type=marker,tag=switch.player_dead] run function switch:modes/traitors_game/death/process

#Détection de fin de partie
execute if score #traitors_game_seconds switch.data matches 1..1200 run function switch:modes/traitors_game/detect_end
execute if score #traitors_game_seconds switch.data matches 1201.. run function switch:modes/traitors_game/process_end

