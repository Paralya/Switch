
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 as @a[tag=switch.alive] at @s run function switch:engine/add_money
execute if score #process_end switch.data matches 1 if entity @a[tag=switch.alive] run tellraw @a ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Les joueurs suivants ont remporté la partie : "},{"selector":"@a[tag=switch.alive,sort=random]"}]
execute if score #process_end switch.data matches 1 unless entity @a[tag=switch.alive] run tellraw @a ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Il n'y a eu aucun gagnant ;("}]
execute if score #process_end switch.data matches 1 as @a[sort=random] run function switch:modes/twittos_de_merde/death

execute if score #process_end switch.data matches 100 run function switch:engine/restart

