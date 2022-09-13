
##Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #traitors_game_ticks switch.data 1

execute as @a[tag=switch.alive,scores={switch.temp.deathCount=1..}] run function switch:modes/traitors_game/death/player
execute as @e[type=marker,tag=switch.temp.player,tag=!switch.player_dead] run function switch:modes/traitors_game/death/detect
execute as @e[type=marker,tag=switch.player_dead] run function switch:modes/traitors_game/death/process

#Détection de fin de partie
execute if score #traitors_game_seconds switch.data matches ..600 run function switch:modes/traitors_game/detect_end
execute if score #traitors_game_seconds switch.data matches 600.. run function switch:modes/traitors_game/process_end

