
#> switch:player/translations/layout_editor_unavailable
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/layout/editor/entry
#

# French
tellraw @s[scores={switch.lang=0}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" L'éditeur de layout n'est disponible que dans le lobby, en étant détaché.","color":"red"}]

# English
tellraw @s[scores={switch.lang=1}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" The layout editor is only available in the lobby, while detached.","color":"red"}]

