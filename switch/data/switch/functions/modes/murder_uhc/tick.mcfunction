
## Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #murder_uhc_ticks switch.data 1

tp @e[type=vex] 0 -10000 0
execute as @a[tag=switch.to_tp] run function switch:modes/murder_uhc/teleport_to_death
execute as @a[tag=switch.ninja_death] run function switch:modes/murder_uhc/death/to_tp
execute at @a[gamemode=!spectator,tag=switch.murder_uhc.detective] run particle glow ~ ~ ~ 0.2 0 0.2 0 5
execute at @a[gamemode=!spectator,tag=switch.murder_uhc.traitor] run particle dust 1 0 0 1 ~ ~2.1 ~ 0.2 0 0.2 0 1 force @a[tag=switch.murder_uhc.traitor]

execute as @a[scores={switch.temp.deathCount=1..},x=0,y=69,z=0,distance=..10] run function switch:modes/murder_uhc/death/player
execute if score #murder_uhc_seconds switch.data matches 1..1200 as @e[type=marker,tag=switch.temp.player,tag=!switch.player_dead] run function switch:modes/murder_uhc/death/detect
execute if score #murder_uhc_seconds switch.data matches 1..1200 as @e[type=marker,tag=switch.player_dead] run function switch:modes/murder_uhc/death/process

# Détection de fin de partie
execute if score #murder_uhc_seconds switch.data matches 1..1200 run function switch:modes/murder_uhc/detect_end
execute if score #murder_uhc_seconds switch.data matches 1201.. run function switch:modes/murder_uhc/process_end

