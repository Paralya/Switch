
# French
execute if score #process_end switch.data matches 1 if entity @a[scores={switch.alive=2}] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Les joueurs suivants ont remporté la partie : "},{"selector":"@a[scores={switch.alive=2},sort=random]"}]
execute if score #process_end switch.data matches 1 unless entity @a[scores={switch.alive=2}] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Aucun joueur n'a terminé la course dans le temps imparti !"}]

