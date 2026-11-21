
#> switch:modes/bombardement/translations/record_tellraw
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:modes/bombardement/record_tellraw with storage switch:records bombardement
#
# @args		seconds (unknown)
#			player (unknown)
#

# French
$execute if score #bombardement_seconds switch.data > #record switch.data run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Nouveau record de $(seconds) secondes par $(player) !","color":"#FFE60A"}]
$execute unless score #bombardement_seconds switch.data > #record switch.data run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Record actuel de $(seconds) secondes détenu par $(player)","color":"#FFE60A"}]

# English
$execute if score #bombardement_seconds switch.data > #record switch.data run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" New record of $(seconds) seconds by $(player)!","color":"#FFE60A"}]
$execute unless score #bombardement_seconds switch.data > #record switch.data run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Current record of $(seconds) seconds held by $(player)","color":"#FFE60A"}]

