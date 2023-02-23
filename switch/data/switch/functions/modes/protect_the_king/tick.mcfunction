
## Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #protect_the_king_ticks switch.data 1

kill @e[type=item,nbt={Age:200s}]
execute as @a[scores={switch.temp.deathCount=1..},x=0,y=69,z=0,distance=..10,sort=random] run function switch:modes/protect_the_king/death
execute at @a[gamemode=!spectator,tag=switch.king] run particle glow ~ ~ ~ 0.2 0 0.2 0 5

# Détection de fin de partie
execute if score #protect_the_king_seconds switch.data matches 1..900 run function switch:modes/protect_the_king/detect_end
execute if score #protect_the_king_seconds switch.data matches 901.. run function switch:modes/protect_the_king/process_end

