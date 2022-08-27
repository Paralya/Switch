
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 run scoreboard players add @a[tag=switch.alive] switch.money 1
execute if score #process_end switch.data matches 1 if entity @a[tag=switch.alive] run tellraw @a ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Les joueurs suivants ont remporté la partie : "},{"selector":"@a[tag=switch.alive,sort=random]"}]
execute if score #process_end switch.data matches 1 unless entity @a[tag=switch.alive] run tellraw @a ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Il n'y a eu aucun gagnant ;("}]
execute if score #process_end switch.data matches 1 as @a[sort=random] run function switch:modes/_free_slot_6/death

#Obligatoire
execute if score #process_end switch.data matches 100 run function switch:engine/restart

