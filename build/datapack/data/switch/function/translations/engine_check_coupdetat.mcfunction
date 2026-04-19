
#> switch:translations/engine_check_coupdetat
#
# @executed	as @a[tag=switch.coupdetat]
#
# @within	switch:engine/check_coupdetat [ as @a[tag=switch.coupdetat] ]
#

# French
tellraw @a[scores={switch.lang=0},tag=!detached] [{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s","color":"aqua"},{"text":" n'a pas reçu assez de vote pour son coup d'état. ("},{"score":{"name":"#percentage","objective":"switch.data"}},{"text":"%)"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] [{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s","color":"aqua"},{"text":" has not received enough votes for their coup d'état. ("},{"score":{"name":"#percentage","objective":"switch.data"}},{"text":"%)"}]

