
#> switch:translations/modes_spectres_game_detect_end
#
# @within	switch:modes/spectres_game/detect_end
#

# French
execute if score #spectres_game_seconds switch.data matches 900 if score #game_state switch.data matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, temps écoulé ! Aucun des camps n'est sorti vainqueur au bout de 10 minutes !"}]
execute if score #game_state switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, victoire des "},{"text":"visibles","color":"green"},{"text":" ! GG à "},{"selector":"@a[scores={switch.alive=1..},team=switch.temp.visible]"}]
execute if score #game_state switch.data matches 2 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, victoire des "},{"text":"spectres","color":"yellow"},{"text":" ! GG à "},{"selector":"@a[scores={switch.alive=1..,switch.temp.spectror=0},team=switch.temp.spectre]"}]
execute if score #game_state switch.data matches 3 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, aucun des camps n'est sorti vainqueur car il n'y a plus aucun joueur en vie !"}]
execute if score #game_state switch.data matches 4 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Victoire du "},{"text":"spectror","color":"red"},{"text":" ! GG à "},{"selector":"@a[scores={switch.alive=1..,switch.temp.spectror=1}]"}]

# English
execute if score #spectres_game_seconds switch.data matches 900 if score #game_state switch.data matches 0 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Game over, time up! Neither side is the winner after 10 minutes!"}]
execute if score #game_state switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Game over, victory for "},{"text":"visibles","color":"green"},{"text":"! GG to "},{"selector":"@a[scores={switch.alive=1..},team=switch.temp.visible]"}]
execute if score #game_state switch.data matches 2 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Game over, victory for "},{"text":"spectres","color":"yellow"},{"text":"! GG to "},{"selector":"@a[scores={switch.alive=1..,switch.temp.spectror=0},team=switch.temp.spectre]"}]
execute if score #game_state switch.data matches 3 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Game over, neither side has won because there are no players left alive!"}]
execute if score #game_state switch.data matches 4 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Victory of the "},{"text":"spectror","color":"red"},{"text":"! GG to "},{"selector":"@a[scores={switch.alive=1..,switch.temp.spectror=1}]"}]

