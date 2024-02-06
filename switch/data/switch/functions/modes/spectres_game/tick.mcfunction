
scoreboard players add #spectres_game_ticks switch.data 1

execute as @a[tag=!detached,tag=switch.to_tp] run function switch:modes/spectres_game/teleport_to_death
kill @e[type=item,nbt={Age:200s}]

execute as @a[tag=!detached,x=0,y=69,z=0,distance=..10] run function switch:modes/spectres_game/death/player
execute if score #spectres_game_seconds switch.data matches 1..900 as @e[type=marker,tag=switch.temp.player,tag=!switch.player_dead] run function switch:modes/spectres_game/death/detect
execute if score #spectres_game_seconds switch.data matches 1..900 as @e[type=marker,tag=switch.player_dead] run function switch:modes/spectres_game/death/for_global

#si un joueur casse la crying obsidienne executer une fonction
execute as @a[tag=!detached,scores={switch.temp.break_obsidian=1..}] run function switch:modes/spectres_game/obsidian_effect
#clear les crying obsidiennes des inventaires
clear @a[tag=!detached] crying_obsidian


# Particules sur tous les spectres qui ne sneake pas pour tous les joueurs
execute at @a[tag=!detached,team=switch.temp.spectre,gamemode=!spectator,predicate=!switch:is_sneaking,predicate=!switch:in_air] run particle dolphin ~ ~ ~ 0.2 0 0.2 0 2 normal

# On enlève les particules d'absorption
execute as @a[tag=!detached,nbt={active_effects:[{id:"minecraft:absorption",show_particles:1b}]}] run function switch:modes/spectres_game/absorption

# Particules sur tous les spectres, pour les spectres
execute at @a[tag=!detached,gamemode=!spectator,team=switch.temp.spectre] run particle dust 1 1 0.5 1 ~ ~2.1 ~ 0.2 0 0.2 0 1 force @a[tag=!detached,team=switch.temp.spectre]

# Advancement
advancement grant @a[tag=!detached,team=switch.temp.spectre,scores={switch.temp.kills=3..}] only switch:visible/18

# Détection de fin de partie
execute if score #spectres_game_seconds switch.data matches 1..900 run function switch:modes/spectres_game/detect_end
execute if score #spectres_game_seconds switch.data matches 901.. run function switch:modes/spectres_game/process_end

# obsidienne poulmet
execute as @e[type=falling_block] at @s unless block ~ ~-2 ~ minecraft:air run ride @s dismount