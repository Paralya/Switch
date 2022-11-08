##Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #feed_fast_ticks switch.data 1

execute as @a[scores={switch.temp.deathCount=1..},sort=random] run function switch:modes/feed_fast/death
execute as @a[scores={switch.jump=4..},sort=random] run function switch:modes/feed_fast/instant_ground

#Fin de la partie si il n'y a plus de joueur en vie, ou que le temps est écoulé
execute unless entity @a[tag=switch.alive] run function switch:modes/feed_fast/process_end
execute if score #remaining_time switch.data matches 0 run function switch:modes/feed_fast/process_end
