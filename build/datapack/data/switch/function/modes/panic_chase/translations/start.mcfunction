
#> switch:modes/panic_chase/translations/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:modes/panic_chase/start
#

# French
tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"Attention, les souris ne peuvent pas taper les chasseurs !","color":"yellow"}]
tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"ParalyaPvPNewFR","storage":"switch:main","interpret":true}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"Careful, the mouses can't hit the hunters!","color":"yellow"}]
tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"ParalyaPvPNewEN","storage":"switch:main","interpret":true}]

