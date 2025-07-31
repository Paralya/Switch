
#> switch:translations/engine_check_coupdetat
#
# @executed	in switch:game
#
# @within	switch:engine/check_coupdetat
#

# French
tellraw @a[scores={switch.lang=0},tag=!detached] [{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s","color":"aqua"},{"text":" n'a pas reçu assez de vote pour son coup d'état."}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] [{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s","color":"aqua"},{"text":" has not received enough votes for their coup d'état."}]

