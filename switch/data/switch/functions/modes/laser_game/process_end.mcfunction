
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 run scoreboard players add @a[tag=switch.alive] switch.money 1
execute if score #process_end switch.data matches 1 if score #red_points switch.data > #blue_points switch.data run tellraw @a ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu avec une victoire de l'équipe rouge : "},{"selector":"@a[tag=switch.laser_game.red,sort=random]"}]
execute if score #process_end switch.data matches 1 if score #red_points switch.data = #blue_points switch.data run tellraw @a ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Désolé mais il y a égalité !"}]
execute if score #process_end switch.data matches 1 if score #red_points switch.data < #blue_points switch.data run tellraw @a ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu avec une victoire de l'équipe bleue : "},{"selector":"@a[tag=switch.laser_game.blue,sort=random]"}]
execute if score #process_end switch.data matches 1 run gamemode spectator @a
execute if score #process_end switch.data matches 1 run effect clear @a
execute if score #process_end switch.data matches 1 run clear @a

execute if score #process_end switch.data matches 1 run scoreboard players operation @a switch.temp.kills *= #10 switch.data
execute if score #process_end switch.data matches 1 run scoreboard objectives setdisplay sidebar switch.temp.kills

execute if score #process_end switch.data matches 200 run function switch:engine/restart

