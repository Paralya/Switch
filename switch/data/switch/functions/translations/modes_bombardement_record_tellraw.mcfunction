
# French
$execute if score #bombardement_seconds switch.data > #record switch.data run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Nouveau record de $(seconds) secondes par $(player) !","color":"yellow"}]
$execute unless score #bombardement_seconds switch.data > #record switch.data run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Record actuel de $(seconds) secondes détenu par $(player)","color":"yellow"}]

