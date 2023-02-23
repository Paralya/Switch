
data modify storage switch:main new set value []
execute if data storage switch:main copy[0] run function switch:maps/storage_map_list/remove_from_storage_loop
# execute unless data storage switch:main new[0] run tellraw @a ["\n",{"nbt":"ParalyaWarning","storage":"switch:main","interpret":true},{"text":" Rafraichissement du cycle des maps pour le mode de jeu "},{"nbt":"current_game_name","storage":"switch:main","interpret":false,"color":"red"},{"text":" !\n"}]

