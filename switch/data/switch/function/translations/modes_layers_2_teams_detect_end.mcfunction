
# French
execute if score #remaining_time switch.data matches 1 if score #game_state switch.data matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, temps écoulé ! Aucun des camps n'est sorti vainqueur au bout de 12 minutes !"}]
execute if score #game_state switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, victoire des "},{"text":"rouges","color":"red"},{"text":" ! GG à "},{"selector":"@a[tag=!detached,gamemode=!spectator,team=switch.temp.red]"}]
execute if score #game_state switch.data matches 2 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, victoire des "},{"text":"bleus","color":"blue"},{"text":" ! GG à "},{"selector":"@a[tag=!detached,gamemode=!spectator,team=switch.temp.blue]"}]
execute if score #game_state switch.data matches 3 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, aucun des camps n'est sorti vainqueur car il n'y a plus aucun joueur en vie !"}]

# English
execute if score #remaining_time switch.data matches 1 if score #game_state switch.data matches 0 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Game over, time up! Neither side is the winner after 12 minutes!"}]
execute if score #game_state switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Game over, winner team is "},{"text":"red","color":"red"},{"text":"! GG to "},{"selector":"@a[tag=!detached,gamemode=!spectator,team=switch.temp.red]"}]
execute if score #game_state switch.data matches 2 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Game over, winner team is "},{"text":"blue","color":"blue"},{"text":"! GG to "},{"selector":"@a[tag=!detached,gamemode=!spectator,team=switch.temp.blue]"}]
execute if score #game_state switch.data matches 3 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Game over, neither side has won because there are no players left alive!"}]

