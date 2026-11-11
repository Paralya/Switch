
#> switch:modes/protect_the_king/translations/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:modes/protect_the_king/start
#

# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"ParalyaPvPNewFR","storage":"switch:main","interpret":true}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"ParalyaPvPNewEN","storage":"switch:main","interpret":true}]

