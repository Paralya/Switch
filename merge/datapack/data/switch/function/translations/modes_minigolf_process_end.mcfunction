
# French
execute if score #process_end switch.data matches 1 if entity @a[tag=!detached,tag=switch.winner] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Le vainqueur de la partie est "},{"selector":"@a[tag=!detached,tag=switch.winner]"},{"text":" avec "},{"score":{"name":"#min","objective":"switch.data"},"color":"gold"},{"text":" coups !"}]
execute if score #process_end switch.data matches 1 unless entity @a[tag=!detached,tag=switch.winner] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Aucun participant n'a terminé..."}]

# English
execute if score #process_end switch.data matches 1 if entity @a[tag=!detached,tag=switch.winner] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" End of mini-game! The winner of the game is "},{"selector":"@a[tag=!detached,tag=switch.winner]"},{"text":" with "},{"score":{"name":"#min","objective":"switch.data"},"color":"gold"},{"text":" moves!"}]
execute if score #process_end switch.data matches 1 unless entity @a[tag=!detached,tag=switch.winner] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" End of mini-game! No participant has finished..."}]

