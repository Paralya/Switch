
#> switch:translations/modes_minigolf_start
#
# @within	switch:modes/minigolf/start
#

# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de MiniGolf, vous avez 5 secondes de préparation !"}]
tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"ParalyaAstuce","storage":"switch:main","interpret":true},{"text":" La puissance de votre coup est déterminée par le slot sélectionné de votre hotbar !"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Starting the MiniGolf game, you have 5 seconds to prepare!"}]
tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"ParalyaAstuceEN","storage":"switch:main","interpret":true},{"text":" The power of your shot is determined by the selected slot on your hotbar!"}]

