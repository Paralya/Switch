
#> switch:translations/modes_de_a_coudre_process_end
#
# @within	switch:modes/de_a_coudre/process_end
#

# French
execute if score #process_end switch.data matches 1 if score #detect_end switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Le vainqueur de la partie est "},{"selector":"@a[tag=!detached,tag=switch.winner]"},{"text":" avec "},{"score":{"name":"#max","objective":"switch.data"},"color":"gold"},{"text":" points !"}]
execute if score #process_end switch.data matches 1 if score #detect_end switch.data matches 2 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Temps écoulé ! Il n'y a eu aucun gagnant ;("}]

# English
execute if score #process_end switch.data matches 1 if score #detect_end switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" End of mini-game! The winner of the game is "},{"selector":"@a[tag=!detached,tag=switch.winner]"},{"text":" with "},{"score":{"name":"#max","objective":"switch.data"},"color":"gold"},{"text":" points!"}]
execute if score #process_end switch.data matches 1 if score #detect_end switch.data matches 2 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Time up! There were no winners ;("}]

