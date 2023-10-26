
## Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #beat_the_kings_ticks switch.data 1

execute as @a[tag=!switch.detached,tag=switch.to_tp] run function switch:modes/beat_the_kings/teleport_to_death

execute as @a[tag=!switch.detached,x=0,y=69,z=0,distance=..10] run function switch:modes/beat_the_kings/death/player
execute if score #beat_the_kings_seconds switch.data matches 1..900 as @e[type=marker,tag=switch.temp.player,tag=!switch.player_dead] run function switch:modes/beat_the_kings/death/detect
execute if score #beat_the_kings_seconds switch.data matches 1..900 as @e[type=marker,tag=switch.player_dead] run function switch:modes/beat_the_kings/death/for_global

# Détection de fin de partie
execute if score #beat_the_kings_seconds switch.data matches 1..900 run function switch:modes/beat_the_kings/detect_end
execute if score #beat_the_kings_seconds switch.data matches 901.. run function switch:modes/beat_the_kings/process_end

