
## Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #spectres_game_ticks switch.data 1

execute as @a[tag=switch.to_tp] run function switch:modes/spectres_game/teleport_to_death
kill @e[type=item,nbt={Age:200s}]

execute as @a[scores={switch.temp.deathCount=1..},x=0,y=69,z=0,distance=..10] run function switch:modes/spectres_game/death/player
execute if score #spectres_game_seconds switch.data matches 1..900 as @e[type=marker,tag=switch.temp.player,tag=!switch.player_dead] run function switch:modes/spectres_game/death/detect
execute if score #spectres_game_seconds switch.data matches 1..900 as @e[type=marker,tag=switch.player_dead] run function switch:modes/spectres_game/death/for_global

execute at @a[tag=switch.spectres_game.spectre,gamemode=!spectator,predicate=!switch:is_sneaking,predicate=!switch:in_air] run particle dolphin ~ ~ ~ 0.2 0 0.2 0 2 normal
execute as @a[nbt={ActiveEffects:[{Id:22,ShowParticles:1b}]}] run function switch:modes/spectres_game/absorption

# Détection de fin de partie
execute if score #spectres_game_seconds switch.data matches 1..900 run function switch:modes/spectres_game/detect_end
execute if score #spectres_game_seconds switch.data matches 901.. run function switch:modes/spectres_game/process_end

