
##Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #glassrunner_ticks switch.data 1

#execute as @a[scores={switch.temp.deathCount=1..},sort=random] run function switch:modes/glassrunner/death


#Fin de la partie si il n'y a plus de joueur en vie, ou que le temps est écoulé
execute unless entity @a[tag=switch.alive] run function switch:modes/glassrunner/process_end
execute if score #glassrunner_seconds switch.data matches 5.. run function switch:modes/glassrunner/process_end
