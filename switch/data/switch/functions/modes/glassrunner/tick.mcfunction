
##Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #glassrunner_ticks switch.data 1

execute as @a[scores={switch.glassrunner.deathCount=1..},x=0,y=69,z=0,distance=..5,sort=random] run function switch:modes/glassrunner/death

execute as @a at @s run function switch:modes/glassrunner/tick_player

execute as @e[tag=switch.glassrunner.glass_bridge,distance=..150] at @s run function switch:modes/glassrunner/tick_glass_bridge

execute as @e[type=arrow,nbt={inGround:1b},distance=..200] at @s run function switch:modes/glassrunner/destroy_glass_around

#Fin de la partie si il n'y a plus de joueur en vie, ou que le temps est écoulé
execute if score #glassrunner_seconds switch.data matches 3600.. run function switch:modes/glassrunner/process_end
