
## Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #replicate_the_build_ticks switch.data 1

# execute as @a[scores={switch.temp.deathCount=1..},x=0,y=69,z=0,distance=..10,sort=random] run function switch:modes/replicate_the_build/death


# Fin de la partie si il n'y a plus de joueur en vie, ou que le temps est écoulé
execute unless entity @a[tag=switch.alive] run function switch:modes/replicate_the_build/process_end
execute if score #replicate_the_build_seconds switch.data matches 5.. run function switch:modes/replicate_the_build/process_end
