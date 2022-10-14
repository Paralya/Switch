
##Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #spectres_game_ticks switch.data 1

execute as @a[tag=switch.to_tp] run function switch:modes/spectres_game/teleport_to_death

execute as @a[scores={switch.temp.deathCount=1..},x=0,y=69,z=0,distance=..5] run function switch:modes/spectres_game/death/player
execute if score #spectres_game_seconds switch.data matches 1..600 as @e[type=marker,tag=switch.temp.player,tag=!switch.player_dead] run function switch:modes/spectres_game/death/detect
execute if score #spectres_game_seconds switch.data matches 1..600 as @e[type=marker,tag=switch.player_dead] run function switch:modes/spectres_game/death/process


#Détection de fin de partie
execute if score #spectres_game_seconds switch.data matches 1..600 run function switch:modes/spectres_game/detect_end
execute if score #spectres_game_seconds switch.data matches 601.. run function switch:modes/spectres_game/process_end

