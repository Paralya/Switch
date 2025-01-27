
#> switch:translations/modes_panic_chase_detect_end
#
# @within	switch:modes/panic_chase/detect_end
#

# French
execute if score #remaining_time switch.data matches 0 if score #game_state switch.data matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, temps écoulé ! Victoire des "},{"text":"souris","color":"blue"},{"text":" ! GG à "},{"selector":"@a[tag=!detached,gamemode=!spectator,team=switch.temp.mouse]"}]
execute if score #game_state switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, victoire des "},{"text":"chasseurs","color":"red"},{"text":" ! GG à "},{"selector":"@a[tag=!detached,gamemode=!spectator,team=switch.temp.hunter]"}]
execute if score #game_state switch.data matches 2 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, plus aucun chasseur en vie donc victoire des "},{"text":"souris","color":"blue"},{"text":" ! GG à "},{"selector":"@a[tag=!detached,gamemode=!spectator,team=switch.temp.mouse]"}]
execute if score #game_state switch.data matches 3 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, aucun des camps n'est sorti vainqueur car il n'y a plus aucun joueur en vie !"}]

# English
execute if score #remaining_time switch.data matches 0 if score #game_state switch.data matches 0 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Game over, time up! Victory for "},{"text":"mouse","color":"blue"},{"text":"! GG to "},{"selector":"@a[tag=!detached,gamemode=!spectator,team=switch.temp.mouse]"}]
execute if score #game_state switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Game over, victory for "},{"text":"hunters","color":"red"},{"text":"! GG to "},{"selector":"@a[tag=!detached,gamemode=!spectator,team=switch.temp.hunter]"}]
execute if score #game_state switch.data matches 2 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Game over, no hunter left alive so victory for the "},{"text":"mouse","color":"blue"},{"text":" team! GG to "},{"selector":"@a[tag=!detached,gamemode=!spectator,team=switch.temp.mouse]"}]
execute if score #game_state switch.data matches 3 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Game over, neither side has won because there are no players left alive!"}]

