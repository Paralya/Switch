
#> switch:player/translations/practice_enabled
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/practice/toggle
#

# French
tellraw @s[scores={switch.lang=0}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Practice Mode activé !","color":"#2EFF8B"},{"text":"\n➤ Fragment : pose un checkpoint (5 max, le plus ancien est supprimé)","color":"#AEBBD0"},{"text":"\n➤ Potion : respawn au dernier checkpoint (tomber fonctionne aussi)","color":"#AEBBD0"},{"text":"\n➤ Awakened Fragment : retire le dernier checkpoint","color":"#AEBBD0"},{"text":"\nLes jumps terminés en Practice Mode ne comptent pas !","color":"#FF3347"}]

# English
tellraw @s[scores={switch.lang=1}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Practice Mode enabled!","color":"#2EFF8B"},{"text":"\n➤ Fragment: places a checkpoint (5 max, the oldest one is removed)","color":"#AEBBD0"},{"text":"\n➤ Potion: respawn to the last checkpoint (falling works too)","color":"#AEBBD0"},{"text":"\n➤ Awakened Fragment: removes the last checkpoint","color":"#AEBBD0"},{"text":"\nJumps completed in Practice Mode don't count!","color":"#FF3347"}]

