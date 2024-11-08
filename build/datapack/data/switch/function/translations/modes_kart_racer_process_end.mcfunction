
#> switch:translations/modes_kart_racer_process_end
#
# @within	switch:modes/kart_racer/process_end
#

# French
execute if score #process_end switch.data matches 1 if entity @a[scores={switch.alive=2}] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Les joueurs suivants ont remporté la partie : "},{"selector":"@a[scores={switch.alive=2},sort=random]"}]
execute if score #process_end switch.data matches 1 unless entity @a[scores={switch.alive=2}] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Aucun joueur n'a terminé la course dans le temps imparti !"}]

# English
execute if score #process_end switch.data matches 1 if entity @a[scores={switch.alive=2}] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" End of mini-game! The following players have won the game: "},{"selector":"@a[scores={switch.alive=2},sort=random]"}]
execute if score #process_end switch.data matches 1 unless entity @a[scores={switch.alive=2}] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" End of mini-game! No player has completed the race in the allotted time!"}]

