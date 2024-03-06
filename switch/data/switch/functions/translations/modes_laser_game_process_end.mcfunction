
# French
execute if score #process_end switch.data matches 1 if score #red_points switch.data > #blue_points switch.data run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu avec une victoire de l'équipe rouge : "},{"selector":"@a[scores={switch.alive=11},sort=random]"}]
execute if score #process_end switch.data matches 1 if score #red_points switch.data = #blue_points switch.data run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Désolé mais il y a égalité !"}]
execute if score #process_end switch.data matches 1 if score #red_points switch.data < #blue_points switch.data run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu avec une victoire de l'équipe bleue : "},{"selector":"@a[scores={switch.alive=10},sort=random]"}]

# English
execute if score #process_end switch.data matches 1 if score #red_points switch.data > #blue_points switch.data run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt": "Paralya", "storage": "switch:main", "interpret":true},{"text": "End of mini-game with red team winning:"},{"selector":"@a[scores={switch.alive=11},sort=random]"}]
execute if score #process_end switch.data matches 1 if score #red_points switch.data = #blue_points switch.data run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt": "Paralya", "storage": "switch:main", "interpret":true},{"text": "End of mini-game! Sorry, but it's a tie!"}]
execute if score #process_end switch.data matches 1 if score #red_points switch.data < #blue_points switch.data run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt": "Paralya", "storage": "switch:main", "interpret":true},{"text": "End of mini-game with blue team winning:"},{"selector":"@a[scores={switch.alive=10},sort=random]"}]

