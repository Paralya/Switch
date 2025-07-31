
#> switch:translations/modes_kart_racer_checkpoints_forced_respawn
#
# @executed	as @a[tag=!detached,predicate=switch:has_vehicle_with_tag,limit=1] & at @s
#
# @within	switch:modes/kart_racer/checkpoints/forced_respawn
#

# French
tellraw @s[scores={switch.lang=0}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous avez été téléporté au dernier checkpoint car vous êtes tombé hors map !"}]

# English
tellraw @s[scores={switch.lang=1}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" You have been teleported to the last checkpoint because you fell off the map!"}]

