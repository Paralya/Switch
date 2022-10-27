
##Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #kart_racer_ticks switch.data 1

#execute as @a[scores={switch.temp.deathCount=1..},x=0,y=69,z=0,distance=..5,sort=random] run function switch:modes/kart_racer/death

execute as @e[type=marker,tag=switch.checkpoint] run function switch:modes/kart_racer/checkpoints/tick

##Fin de la partie
#execute if score #detect_end switch.data matches 0 if score #kart_racer_seconds switch.data matches 600.. run scoreboard players set #detect_end switch.data 1
execute if score #detect_end switch.data matches 1.. run function switch:modes/kart_racer/process_end

