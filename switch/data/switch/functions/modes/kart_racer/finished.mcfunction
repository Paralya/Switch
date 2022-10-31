
tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s","color":"green"},{"text":" a terminé la course en "},{"score":{"name":"#kart_racer_seconds","objective":"switch.data"}},{"text":" secondes !\n"}]
execute if score #remaining_time switch.data matches 61.. run tellraw @a ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous n'avez plus que 60 secondes pour terminer la course !\n"}]
execute if score #remaining_time switch.data matches 61.. run scoreboard players set #remaining_time switch.data 60
scoreboard players add @s switch.temp.checkpoint 1000000
scoreboard players operation @s switch.temp.checkpoint -= #kart_racer_ticks switch.data
tag @s add switch.completed

tag @s add shopping_kart.temp
kill @e[tag=shopping_kart.kart,predicate=shopping_kart:have_player_passenger]
kill @e[type=item]
tag @s remove shopping_kart.temp

