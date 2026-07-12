
#> switch:player/translations/practice_disabled
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/practice/toggle
#

# French
tellraw @s[scores={switch.lang=0}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Practice Mode désactivé, retour au début du jump !","color":"yellow"}]

# English
tellraw @s[scores={switch.lang=1}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Practice Mode disabled, back to the start of the jump!","color":"yellow"}]

