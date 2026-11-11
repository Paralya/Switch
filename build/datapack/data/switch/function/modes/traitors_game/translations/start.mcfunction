
#> switch:modes/traitors_game/translations/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:modes/traitors_game/start
#

# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"ParalyaPvPOldFR","storage":"switch:main","interpret":true}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"ParalyaPvPOldEN","storage":"switch:main","interpret":true}]

