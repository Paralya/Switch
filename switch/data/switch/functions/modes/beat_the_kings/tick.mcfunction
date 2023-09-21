
## Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #beat_the_kings_ticks switch.data 1

execute as @a[tag=switch.to_tp] run function switch:modes/beat_the_kings/teleport_to_death
kill @e[type=item,nbt={Age:200s}]

execute as @a[scores={switch.temp.deathCount=1..},x=0,y=69,z=0,distance=..10] run function switch:modes/beat_the_kings/death/player
execute if score #beat_the_kings_seconds switch.data matches 1..900 as @e[type=marker,tag=switch.temp.player,tag=!switch.player_dead] run function switch:modes/beat_the_kings/death/detect
execute if score #beat_the_kings_seconds switch.data matches 1..900 as @e[type=marker,tag=switch.player_dead] run function switch:modes/beat_the_kings/death/for_global

# Particules sur tous les kings qui ne sneake pas pour tous les joueurs
execute at @a[team=switch.temp.king,gamemode=!spectator,predicate=!switch:is_sneaking,predicate=!switch:in_air] run particle dolphin ~ ~ ~ 0.2 0 0.2 0 2 normal

# On enlève les particules d'absorption
execute as @a[nbt={ActiveEffects:[{Id:22,ShowParticles:1b}]}] run function switch:modes/beat_the_kings/absorption

# Particules sur tous les kings, pour les kings
execute at @a[gamemode=!spectator,team=switch.temp.king] run particle dust 1 1 0.5 1 ~ ~2.1 ~ 0.2 0 0.2 0 1 force @a[team=switch.temp.king]

# Détection de fin de partie
execute if score #beat_the_kings_seconds switch.data matches 1..900 run function switch:modes/beat_the_kings/detect_end
execute if score #beat_the_kings_seconds switch.data matches 901.. run function switch:modes/beat_the_kings/process_end

