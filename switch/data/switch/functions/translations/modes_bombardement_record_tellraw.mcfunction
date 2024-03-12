
# French
$execute if score #bombardement_seconds switch.data > #record switch.data run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Nouveau record de $(seconds) secondes par $(player) !","color":"yellow"}]
$execute unless score #bombardement_seconds switch.data > #record switch.data run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Record actuel de $(seconds) secondes détenu par $(player)","color":"yellow"}]

# English
$execute if score #bombardment_seconds switch.data > #record switch.data run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" New record of $(seconds) seconds by $(player)!","color":"yellow"}]
$execute unless score #bombardment_seconds switch.data > #record switch.data run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Current record of $(seconds) seconds held by $(player)","color":"yellow"}]

