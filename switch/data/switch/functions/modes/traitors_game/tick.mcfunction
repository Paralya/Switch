
##Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #traitors_game_ticks switch.data 1

tp @e[type=vex] 0 -10000 0
tp @a[tag=switch.to_tp] 1500 150 1500
tag @a[tag=switch.to_tp] remove switch.to_tp

execute as @a[scores={switch.temp.deathCount=1..}] run function switch:modes/traitors_game/death/player
execute if score #traitors_game_seconds switch.data matches 1..600 as @e[type=marker,tag=switch.temp.player,tag=!switch.player_dead] run function switch:modes/traitors_game/death/detect
execute if score #traitors_game_seconds switch.data matches 1..600 as @e[type=marker,tag=switch.player_dead] run function switch:modes/traitors_game/death/process

#Détection de fin de partie
execute if score #traitors_game_seconds switch.data matches 1..600 run function switch:modes/traitors_game/detect_end
execute if score #traitors_game_seconds switch.data matches 601.. run function switch:modes/traitors_game/process_end

