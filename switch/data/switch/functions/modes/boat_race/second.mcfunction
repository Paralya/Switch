
##Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #boat_race_seconds switch.data 1

execute if score #boat_race_seconds switch.data matches 0.. run function switch:modes/boat_race/xp_bar

execute as @a[tag=!switch.boat_race.finished,x=5033,y=105,z=5000,dx=3,dy=4,dz=4] at @s run function switch:modes/boat_race/finish

#Clear des anciens mobs si il y en a
execute if score #boat_race_seconds switch.data matches ..-1 run tp @e[type=chest_boat] 0 -10000 0
execute if score #boat_race_seconds switch.data matches ..-1 run kill @e[type=chest_boat]
