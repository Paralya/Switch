
##Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #_free_slot_6_ticks switch.data 1

#execute as @a[scores={switch.temp.deathCount=1..},sort=random] run function switch:modes/_free_slot_6/death


#Fin de la partie si il n'y a plus de joueur en vie, ou que le temps est écoulé
execute unless entity @a[tag=switch.alive] run function switch:modes/_free_slot_6/process_end
execute if score #_free_slot_6_seconds switch.data matches 5.. run function switch:modes/_free_slot_6/process_end
