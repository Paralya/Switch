
#> switch:player/translations/layout_editor_saved
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/layout/editor/save_and_close
#

# French
tellraw @s[scores={switch.lang=0}] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Layout sauvegardé ! Il s'appliquera aux kits de tous les mini-jeux.","color":"green"}]

# English
tellraw @s[scores={switch.lang=1}] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Layout saved! It will apply to every mini-game kit.","color":"green"}]

