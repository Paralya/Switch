
#> switch:translations/modes_glassrunner_end_red
#
# @executed	positioned 3000 128 3000
#
# @within	switch:modes/glassrunner/end/red
#

# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Les rouges ont gagnés"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" End of the mini-game! The reds have won"}]

