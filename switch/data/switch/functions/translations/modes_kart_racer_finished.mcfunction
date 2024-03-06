
# French
tellraw @a[scores={switch.lang=0},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s","color":"green"},{"text":" a terminé la course en "},{"score":{"name":"#kart_racer_seconds","objective":"switch.data"}},{"text":","},{"score":{"name":"#digit","objective":"switch.data"}},{"text":" secondes !\n"}]
execute if score #remaining_time switch.data matches 61.. if entity @a[scores={switch.alive=1}] run tellraw @a[scores={switch.lang=0},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous n'avez plus que 60 secondes pour terminer la course !\n"}]

# English
tellraw @a[scores={switch.lang=1},tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":""},{"selector":"@s","color":"green"},{"text":" finished the race in "},{"score":{"name":"#kart_racer_seconds","objective":"switch.data"}},{"text":","},{"score":{"name":"#digit","objective":"switch.data"}},{"text":" secondes !\n"}]
execute if score #remaining_time switch.data matches 61.. if entity @a[scores={switch.alive=1}] run tellraw @a[scores={switch.lang=1},tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":"You only have 60 seconds left to finish the race!"}]

