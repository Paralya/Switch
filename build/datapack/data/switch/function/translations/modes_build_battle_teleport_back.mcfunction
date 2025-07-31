
#> switch:translations/modes_build_battle_teleport_back
#
# @executed	at @e[tag=switch.build_battle_marker,predicate=switch:has_same_temp_id] & positioned ~1 ~ ~1
#
# @within	switch:modes/build_battle/teleport_back
#

# French
tellraw @s[scores={switch.lang=0}] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Veuillez restez dans votre cage !"}]

# English
tellraw @s[scores={switch.lang=1}] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Please stay in your cage!"}]

