
$execute if score #bombardement_seconds switch.data > #record switch.data run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Nouveau record de $(seconds) secondes par $(player) !","color":"yellow"}]
$execute unless score #bombardement_seconds switch.data > #record switch.data run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Record actuel de $(seconds) manches détenu par $(player)","color":"yellow"}]
scoreboard players reset #record switch.data

