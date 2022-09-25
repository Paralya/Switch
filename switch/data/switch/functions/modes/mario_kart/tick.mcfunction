
##Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #mario_kart_ticks switch.data 1

#execute as @a[scores={switch.temp.deathCount=1..},x=0,y=69,z=0,distance=..5,sort=random] run function switch:modes/mario_kart/death

scoreboard players remove @e[type=pig,scores={switch.temp.engine=1..}] switch.temp.engine 1
scoreboard players operation @e[type=pig,scores={switch.temp.engine=1..}] switch.temp.engine *= #14 switch.data
scoreboard players operation @e[type=pig,scores={switch.temp.engine=1..}] switch.temp.engine /= #15 switch.data
execute as @a[gamemode=!spectator,predicate=switch:mario_kart/is_riding_minecart,nbt=!{Motion:[0.00d,0.00d,0.00d]}] run function switch:modes/mario_kart/move_minecart

##Fin de la partie
execute if score #detect_end switch.data matches 0 if score #mario_kart_seconds switch.data matches 600.. run scoreboard players set #detect_end switch.data 1
execute if score #detect_end switch.data matches 1.. run function switch:modes/mario_kart/process_end

