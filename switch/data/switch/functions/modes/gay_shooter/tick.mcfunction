
## Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #gay_shooter_ticks switch.data 1

execute as @a[tag=switch.to_tp] run function switch:modes/gay_shooter/teleport_to_death
kill @e[type=item,nbt={Age:200s}]

execute as @a[scores={switch.temp.deathCount=1..},x=0,y=69,z=0,distance=..10] run function switch:modes/gay_shooter/death/player
execute if score #gay_shooter_seconds switch.data matches 1..900 as @e[type=marker,tag=switch.temp.player,tag=!switch.player_dead] run function switch:modes/gay_shooter/death/detect
execute if score #gay_shooter_seconds switch.data matches 1..900 as @e[type=marker,tag=switch.player_dead] run function switch:modes/gay_shooter/death/for_global

# Particules sur tous les spectres qui ne sneake pas pour tous les joueurs
execute at @a[tag=switch.gay_shooter.spectre,gamemode=!spectator,predicate=!switch:is_sneaking,predicate=!switch:in_air] run particle dolphin ~ ~ ~ 0.2 0 0.2 0 2 normal

# On enlève les particules d'absorption
execute as @a[nbt={ActiveEffects:[{Id:22,ShowParticles:1b}]}] run function switch:modes/gay_shooter/absorption

# Particules sur tous les spectres, pour les spectres
execute at @a[gamemode=!spectator,tag=switch.gay_shooter.spectre] run particle dust 1 1 0.5 1 ~ ~2.1 ~ 0.2 0 0.2 0 1 force @a[tag=switch.gay_shooter.spectre]

# Détection de fin de partie
execute if score #gay_shooter_seconds switch.data matches 1..900 run function switch:modes/gay_shooter/detect_end
execute if score #gay_shooter_seconds switch.data matches 901.. run function switch:modes/gay_shooter/process_end

