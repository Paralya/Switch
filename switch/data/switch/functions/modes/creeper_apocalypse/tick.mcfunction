
##Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #creeper_apocalypse_ticks switch.data 1

execute as @a[scores={switch.temp.deathCount=1..},sort=random] run function switch:modes/creeper_apocalypse/death

execute at @e[type=creeper,nbt={Fuse:1s}] run function switch:modes/creeper_apocalypse/creeper_explode

#Fin de la partie si il n'y a plus de joueur en vie, ou que le temps est écoulé
execute unless entity @a[tag=switch.alive] run function switch:modes/creeper_apocalypse/process_end
execute if score #creeper_apocalypse_seconds switch.data matches 60.. run function switch:modes/creeper_apocalypse/process_end
