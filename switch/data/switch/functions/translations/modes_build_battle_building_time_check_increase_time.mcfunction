
# French
execute if score #success switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" La population (plus de 75%) a voté pour augmenter le temps de construction de 5 minutes !","color":"green"}]
execute unless score #success switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Il n'y a pas eu assez de votes (moins de 75%) pour augmenter le temps de construction...","color":"red"}]

# English
execute if score #success switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt": "Paralya", "storage": "switch:main", "interpret":true},{"text": "The population (over 75%) voted to increase construction time by 5 minutes!", "color": "green"}]
execute unless score #success switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt": "Paralya", "storage": "switch:main", "interpret":true},{"text": "There weren't enough votes (less than 75%) to increase construction time...", "color": "red"}]

