
##Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #border_run_ticks switch.data 1

#execute as @a[scores={switch.temp.deathCount=1..},x=0,y=69,z=0,distance=..10,sort=random] run function switch:modes/border_run/death


#Fin de la partie si il n'y a plus de joueur en vie, ou que le temps est écoulé
execute unless entity @a[tag=switch.alive] run function switch:modes/border_run/process_end
execute if score #border_run_seconds switch.data matches 150.. run function switch:modes/border_run/process_end
