
#> switch:modes/minigolf/translations/record_tellraw_macro
#
# @executed	as @a[tag=!...]
#
# @within	switch:modes/minigolf/record_tellraw_macro {shots:"$(shots)",player:"$(player)",time:"$(time)"}
#
# @args		shots (string)
#			player (string)
#			time (string)
#

# French
$execute if score #new_record switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Nouveau record de $(shots) coups par $(player) en $(time)s !","color":"yellow"}]
$execute unless score #new_record switch.data matches 1 run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Record actuel de $(shots) coups et $(time)s détenu par $(player)","color":"yellow"}]

# English
$execute if score #new_record switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" New record $(shots) hits by $(player) in $(time)s!","color":"yellow"}]
$execute unless score #new_record switch.data matches 1 run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Current record of $(shots) hits and $(time)s held by $(player)","color":"yellow"}]

