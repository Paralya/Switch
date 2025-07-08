
#> switch:translations/modes__coupdetat_start
#
# @within	switch:modes/_coupdetat/start
#

# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s","color":"aqua"},{"text":" a eu l'audace de démarrer son coup d'état pour lancer le mini-jeu "},{"nbt":"coupdetat.name_fr","storage":"switch:main","color":"yellow"},{"text":" ! Va-t-il réussir à battre le dictateur en moins de 50 secondes ?!"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s","color":"aqua"},{"text":" had the audacity to start their coup d'état to launch the minigame "},{"nbt":"coupdetat.name_en","storage":"switch:main","color":"yellow"},{"text":"! Will they succeed in defeating the dictator in under 50 seconds?!"}]

