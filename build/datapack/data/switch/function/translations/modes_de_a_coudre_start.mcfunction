
#> switch:translations/modes_de_a_coudre_start
#
# @within	switch:modes/de_a_coudre/start
#

# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de Dé à Coudre, marquez le maximum de points en sautant dans des points d'eau encerclé de blocs !"}]
tellraw @a[scores={switch.lang=0},tag=!detached] [{"text":"Démarrage d'un nouveau round ! [","color":"yellow"},{"text":"1","color":"gold"},{"text":"/"},{"score":{"name":"#max_rounds","objective":"switch.data"},"color":"gold"},{"text":"]"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Launching game of Dé à Coudre, score as many points as possible by jumping into water dots surrounded by blocks!"}]
tellraw @a[scores={switch.lang=1},tag=!detached] [{"text":"Starting a new round! [","color":"yellow"},{"text":"1","color":"gold"},{"text":"/"},{"score":{"name":"#max_rounds","objective":"switch.data"},"color":"gold"},{"text":"]"}]

