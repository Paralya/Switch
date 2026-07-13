
#> switch:player/translations/layout_editor_reset
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/layout/editor/reset
#

# French
tellraw @s[scores={switch.lang=0}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Layout réinitialisé : tous les rôles utilisent leur slot par défaut.","color":"yellow"}]

# English
tellraw @s[scores={switch.lang=1}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Layout reset: every role is back to its default slot.","color":"yellow"}]

