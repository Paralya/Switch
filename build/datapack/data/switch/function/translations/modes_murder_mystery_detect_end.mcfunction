
#> switch:translations/modes_murder_mystery_detect_end
#
# @within	switch:modes/murder_mystery/detect_end
#

# French
execute if score #remaining_time switch.data matches ..1 if score #game_state switch.data matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, temps écoulé ! Victoire des innocents restants !"}]
execute if score #remaining_time switch.data matches ..1 if score #game_state switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, victoire de "},{"selector":"@a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=3}]","color":"red"}]
execute if score #remaining_time switch.data matches ..1 if score #game_state switch.data matches 2 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, victoire des "},{"text":"innocents","color":"green"},{"text":" ! GG à "},{"selector":"@a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=1..2}]"}]
execute if score #remaining_time switch.data matches ..1 if score #game_state switch.data matches 3 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, aucun des camps n'est sorti vainqueur car il n'y a plus aucun joueur en vie !"}]
execute if score #remaining_time switch.data matches ..1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Détective : "},{"selector":"@a[scores={switch.temp.role=2}]","color":"green"},{"text":" - Murderer : "},{"selector":"@a[scores={switch.temp.role=3}]","color":"red"}]
execute if score #remaining_time switch.data matches ..1 as @a[scores={switch.temp.role=3}] on attacker if entity @s[scores={switch.temp.role=1}] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Dernier Héro : "},{"selector":"@s","color":"blue"}]

# English
execute if score #remaining_time switch.data matches ..1 if score #game_state switch.data matches 0 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Game over, time's up! Victory for the remaining innocents!"}]
execute if score #remaining_time switch.data matches ..1 if score #game_state switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Game over, winner is "},{"selector":"@a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=3}]]","color":"red"}]
execute if score #remaining_time switch.data matches ..1 if score #game_state switch.data matches 2 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Game over, victory for the "},{"text":"innocents","color":"green"},{"text":"! GG to "},{"selector":"@a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=1..2}]"}]
execute if score #remaining_time switch.data matches ..1 if score #game_state switch.data matches 3 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Game over, neither side is the winner as there are no players left alive!"}]
execute if score #remaining_time switch.data matches ..1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Detective: "},{"selector":"@a[scores={switch.temp.role=2}]","color":"green"},{"text":" - Murderer: "},{"selector":"@a[scores={switch.temp.role=3}]","color":"red"}]
execute if score #remaining_time switch.data matches ..1 as @a[scores={switch.temp.role=3}] on attacker if entity @s[scores={switch.temp.role=1}] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Last Hero: "},{"selector":"@s","color":"blue"}]

