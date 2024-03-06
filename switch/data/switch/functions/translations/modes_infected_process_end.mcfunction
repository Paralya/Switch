
# French
execute if score #process_end switch.data matches 1 if score #game_state switch.data matches 0 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Les renforts sont arrivés, victoires des "},{"text":"humains","color":"light_purple"},{"text":" !"}]
execute if score #process_end switch.data matches 1 if score #game_state switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Tous les humains se sont fait infectés, victoire des "},{"text":"zombies","color":"dark_green"},{"text":" !"}]
execute if score #process_end switch.data matches 1 if score #game_state switch.data matches 2 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin de partie, aucun des camps n'est sorti vainqueur car il n'y a plus aucun joueur en vie !"}]

# English
execute if score #process_end switch.data matches 1 if score #game_state switch.data matches 0 run tellraw @a[scores={switch.lang=1},tag=!detached] ["nbt": "Paralya", "storage": "switch:main", "interpret":true},{"text": "Reinforcements have arrived, victories for"},{"text": "humans", "color": "light_purple"},{"text":"!"}]
execute if score #process_end switch.data matches 1 if score #game_state switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["nbt": "Paralya", "storage": "switch:main", "interpret":true},{"text": "All humans got infected, victory of the"},{"text": "zombies", "color": "dark_green"},{"text":"!"}]
execute if score #process_end switch.data matches 1 if score #game_state switch.data matches 2 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt": "Paralya", "storage": "switch:main", "interpret":true},{"text": "End of game, neither side is the winner as there are no players left alive!"}]

