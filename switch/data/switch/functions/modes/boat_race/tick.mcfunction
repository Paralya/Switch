
##Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #boat_race_ticks switch.data 1

execute as @a[scores={switch.temp.deathCount=1..},x=0,y=69,z=0,distance=..5,sort=random] run function switch:modes/boat_race/death
execute as @a[tag=switch.alive] at @s if entity @s[y=-64,dy=64] run function switch:modes/boat_race/death

# Détecte si tous les joueurs ont finis
scoreboard players set #alives switch.data 0
scoreboard players set #finished switch.data 0
execute store result score #alives switch.data if entity @a[tag=switch.alive]
execute store result score #finished switch.data if entity @a[tag=switch.boat_race.finished]
execute if score #alives switch.data = #finished switch.data run scoreboard players set #detect_end switch.data 1

execute as @a[tag=!switch.boat_race.finished,x=5033,y=105,z=5000,dx=3,dy=4,dz=4] at @s run function switch:modes/boat_race/finish

#Fin de la partie si le temps est écoulé, ou qu'ils ont tous finis
execute if score #boat_race_seconds switch.data matches 480.. run scoreboard players set #detect_end switch.data 1
execute if score #detect_end switch.data matches 1 run function switch:modes/boat_race/process_end

