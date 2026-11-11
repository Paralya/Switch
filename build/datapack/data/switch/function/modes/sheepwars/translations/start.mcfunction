
#> switch:modes/sheepwars/translations/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:modes/sheepwars/start
#

# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"ParalyaPvPOldFR","storage":"switch:main","interpret":true}]
execute if score #APOCALYPSE_GAME switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" PARTIE APOCALYPTIQUE (1 chance sur 20) !\n"}]
execute if score #APOCALYPSE_GAME switch.data matches 1 run title @a[scores={switch.lang=0},tag=!detached] title {"text":"PARTIE APOCALYPTIQUE (1/20 chance)"}

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"ParalyaPvPOldEN","storage":"switch:main","interpret":true}]
execute if score #APOCALYPSE_GAME switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" APOCALYPTIC GAME (1 in 20 chance)!\n"}]
execute if score #APOCALYPSE_GAME switch.data matches 1 run title @a[scores={switch.lang=1},tag=!detached] title {"text":"APOCALYPTIC GAME (1/20 chance)"}

