
#> switch:player/translations/trigger_succes_main
#
# @executed	in minecraft:overworld
#
# @within	switch:player/trigger/succes/main with storage switch:main input
#

# French
tellraw @s[scores={switch.lang=0}] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Liste des succès :"}]

# English
tellraw @s[scores={switch.lang=1}] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Advancements list:"}]

