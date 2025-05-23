
#> switch:translations/modes_replicate_the_build_process_end
#
# @within	switch:modes/replicate_the_build/process_end
#

# French
execute if score #process_end switch.data matches 1 if entity @a[scores={switch.alive=1..}] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Les joueurs suivants ont remporté la partie : "},{"selector":"@a[scores={switch.alive=1..},sort=random]"}]
execute if score #process_end switch.data matches 1 unless entity @a[scores={switch.alive=1..}] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Il n'y a eu aucun gagnant ;("}]

# English
execute if score #process_end switch.data matches 1 if entity @a[scores={switch.alive=1..}] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" End of mini-game! The following players have won the game: "},{"selector":"@a[scores={switch.alive=1..},sort=random]"}]
execute if score #process_end switch.data matches 1 unless entity @a[scores={switch.alive=1..}] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" End of mini-game! There were no winners ;("}]

