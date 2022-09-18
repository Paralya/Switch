
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 run scoreboard players add @a[tag=switch.alive] switch.money 1
execute if score #process_end switch.data matches 1 if entity @a[tag=switch.alive] run tellraw @a ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Les joueurs suivants ont remporté la partie : "},{"selector":"@a[tag=switch.alive,sort=random]"}]
execute if score #process_end switch.data matches 1 unless entity @a[tag=switch.alive] run tellraw @a ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Il n'y a eu aucun gagnant ;("}]
execute if score #process_end switch.data matches 1 as @a[sort=random] run function switch:modes/glassrunner/death

execute if score #process_end switch.data matches 1 positioned 3000 -64 3000 run function switch:modes/glassrunner/reset/start

execute if score #process_end switch.data matches 1..399 as @e[tag=switch.glassrunner.reset] at @s run function switch:modes/glassrunner/reset/tick

execute if score #process_end switch.data matches 399 positioned 3000 -64 3000 run function switch:modes/glassrunner/reset/end


#Obligatoire
execute if score #process_end switch.data matches 400.. run function switch:engine/restart

execute if score #process_end switch.data matches 400.. run scoreboard players set #process_end switch.data 0