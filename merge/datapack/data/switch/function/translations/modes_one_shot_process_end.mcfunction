
# French
execute if score #process_end switch.data matches 1 as @a[tag=!detached,scores={switch.temp.kills=18..}] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Le vainqueur de la partie est "},{"selector":"@s"}]
execute if score #process_end switch.data matches 1 unless entity @a[tag=!detached,scores={switch.temp.kills=18..}] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Il n'y a eu aucun gagnant ;("}]

# English
execute if score #process_end switch.data matches 1 as @a[tag=!detached,scores={switch.temp.kills=18..}] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" End of mini-game! The winner of the game is "},{"selector":"@s"}]
execute if score #process_end switch.data matches 1 unless entity @a[tag=!detached,scores={switch.temp.kills=18..}] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" There were no winners ;("}]

