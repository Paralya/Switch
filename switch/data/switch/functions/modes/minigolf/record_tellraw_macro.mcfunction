
$execute if score #new_record switch.data matches 1 run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Nouveau record de $(shots) coups par $(player) en $(time)s !","color":"yellow"}]
$execute unless score #new_record switch.data matches 1 run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Record actuel de $(shots) coups et $(time)s détenu par $(player)","color":"yellow"}]
scoreboard players reset #new_record switch.data
