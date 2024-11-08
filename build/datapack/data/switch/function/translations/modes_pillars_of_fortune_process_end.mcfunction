
#> switch:translations/modes_pillars_of_fortune_process_end
#
# @within	switch:modes/pillars_of_fortune/process_end
#

# French
execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Le vainqueur de la partie est "},{"selector":"@a[tag=!detached,gamemode=survival]","color":"yellow"},{"text":" avec un total de "},{"score":{"name":"#health","objective":"switch.data"},"color":"yellow"},{"text":" points de vie restants !"}]
execute if score #process_end switch.data matches 1 unless score #remaining_players switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Temps écoulé ! Il n'y a eu aucun gagnant ;("}]

# English
execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" End of mini-game! The winner of the game is "},{"selector":"@a[tag=!detached,gamemode=survival]","color":"yellow"},{"text":" with a total of "},{"score":{"name":"#health","objective":"switch.data"},"color":"yellow"},{"text":" remaining life points!"}]
execute if score #process_end switch.data matches 1 unless score #remaining_players switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Time up! There were no winners ;("}]

