
#> switch:translations/engine_launch_game_
#
# @within	switch:engine/launch_game/
#

# French
execute if score #modulo_rand switch.data matches 2.. run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Égalité entre plusieurs mode de jeux, choix aléatoire !\n"}]

# English
execute if score #modulo_rand switch.data matches 2.. run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Tie between several game modes, random choice !\n"}]

