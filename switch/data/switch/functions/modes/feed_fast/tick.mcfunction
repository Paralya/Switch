##Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #feed_fast_ticks switch.data 1

#Autres
execute as @a[scores={switch.temp.deathCount=1..},x=0,y=69,z=0,distance=..5,sort=random] run function switch:modes/feed_fast/death
effect give @a[tag=switch.alive,nbt={foodLevel:0}] poison 1 1 true


#Fin de la partie si il n'y a plus de joueur en vie, ou que le temps est écoulé
execute if score #remaining_time switch.data matches 1.. unless entity @a[tag=switch.alive] run scoreboard players set #remaining_time switch.data 0
execute if score #remaining_time switch.data matches 0 run function switch:modes/feed_fast/process_end

