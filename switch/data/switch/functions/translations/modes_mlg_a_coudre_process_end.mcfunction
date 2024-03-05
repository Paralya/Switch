
# French
execute if score #process_end switch.data matches 1 if score #position switch.data matches 1 run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Le vainqueur de la partie est "},{"selector":"@a[scores={switch.lang=0,switch.temp.lives=1..}]"}]
execute if score #process_end switch.data matches 1 unless score #position switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Temps écoulé ! Il n'y a eu aucun gagnant ;("}]

