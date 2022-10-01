
##Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #creeper_apocalypse_ticks switch.data 1

execute as @a[scores={switch.temp.deathCount=1..},x=0,y=69,z=0,distance=..5,sort=random] run function switch:modes/creeper_apocalypse/death

effect give @e[type=creeper] resistance 99999 0 true
execute as @e[type=area_effect_cloud] at @s run function switch:modes/creeper_apocalypse/creeper_exploded
scoreboard players add @e[type=creeper] switch.temp.duplication 1
execute as @e[type=creeper,scores={switch.temp.duplication=200}] run data modify entity @s ignited set value 1b

#Fin de la partie si il n'y a plus de joueur en vie, ou que le temps est écoulé
execute unless entity @a[tag=switch.alive] run function switch:modes/creeper_apocalypse/process_end
execute if score #creeper_apocalypse_seconds switch.data matches 100.. run function switch:modes/creeper_apocalypse/process_end
