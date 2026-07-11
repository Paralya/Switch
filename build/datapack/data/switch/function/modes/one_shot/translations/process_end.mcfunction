
#> switch:modes/one_shot/translations/process_end
#
# @within	switch:modes/one_shot/process_end
#

# French (#max_kills is computed by process_end before this function runs)
execute if score #process_end switch.data matches 1 if score #max_kills switch.data matches 1.. as @a[tag=!detached] if score @s switch.temp.kills = #max_kills switch.data run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Fin du mini-jeu ! Le vainqueur de la partie est "},{"selector":"@s"},{"text":" avec "},{"score":{"name":"@s","objective":"switch.temp.kills"},"color":"yellow"},{"text":" kills !"}]
execute if score #process_end switch.data matches 1 unless score #max_kills switch.data matches 1.. run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Il n'y a eu aucun gagnant ;("}]

# English
execute if score #process_end switch.data matches 1 if score #max_kills switch.data matches 1.. as @a[tag=!detached] if score @s switch.temp.kills = #max_kills switch.data run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" End of mini-game! The winner of the game is "},{"selector":"@s"},{"text":" with "},{"score":{"name":"@s","objective":"switch.temp.kills"},"color":"yellow"},{"text":" kills!"}]
execute if score #process_end switch.data matches 1 unless score #max_kills switch.data matches 1.. run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" There were no winners ;("}]

