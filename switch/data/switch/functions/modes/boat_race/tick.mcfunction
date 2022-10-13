
##Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #boat_race_ticks switch.data 1

#execute as @a[scores={switch.temp.deathCount=1..},x=0,y=69,z=0,distance=..5,sort=random] run function switch:modes/boat_race/death

# Détecte si tous les joueurs ont finis
scoreboard players set #switch.boat_race.alive switch.data 0
scoreboard players set #switch.boat_race.finished switch.data 0
scoreboard players set #switch.boat_race.can_procees_end switch.data 0
execute store result score #switch.boat_race.alive switch.data if entity @a[tag=switch.alive]
execute store result score #switch.boat_race.finished switch.data if entity @a[tag=switch.boat_race.finished]
execute if score #switch.boat_race.alive switch.data = #switch.boat_race.finished switch.data run scoreboard players set #switch.boat_race.can_procees_end switch.data 1

#Fin de la partie si il n'y a plus de joueur en vie, ou que le temps est écoulé, ou qu'ils ont tous finis
execute unless entity @a[tag=switch.alive] run function switch:modes/boat_race/process_end
execute if score #boat_race_seconds switch.data matches 480.. run function switch:modes/boat_race/process_end
execute if score #switch.boat_race.can_procees_end switch.data matches 1 run function switch:modes/boat_race/process_end
