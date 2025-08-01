
#> switch:translations/player_kill_out_of_map
#
# @executed	as @a[tag=!detached,gamemode=!spectator] & at @s
#
# @within	switch:player/kill_out_of_map
#

# French
tellraw @s[scores={switch.lang=0}] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Tu viens de tomber dans le vide de la map !","color":"yellow"}]

# English
tellraw @s[scores={switch.lang=1}] ["",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" You've just fallen into the map void!","color":"yellow"}]

