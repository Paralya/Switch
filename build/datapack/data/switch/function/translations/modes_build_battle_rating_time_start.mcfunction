
#> switch:translations/modes_build_battle_rating_time_start
#
# @within	switch:modes/build_battle/rating_time/start
#

# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du temps imparti, rappel du thème : "},{"nbt":"current_theme","storage":"switch:main","color":"yellow"},{"text":" !"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Time up, theme reminder: "},{"nbt":"current_theme","storage":"switch:main","color":"yellow"},{"text":"!"}]

