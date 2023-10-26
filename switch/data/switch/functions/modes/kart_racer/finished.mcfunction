
scoreboard players operation #digit switch.data = #kart_racer_ticks switch.data
scoreboard players operation #digit switch.data *= #5 switch.data
scoreboard players operation #digit switch.data %= #100 switch.data

scoreboard players set @s switch.alive 2
tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" "},{"selector":"@s","color":"green"},{"text":" a terminé la course en "},{"score":{"name":"#kart_racer_seconds","objective":"switch.data"}},{"text":","},{"score":{"name":"#digit","objective":"switch.data"}},{"text":" secondes !\n"}]
execute if score #remaining_time switch.data matches 61.. if entity @a[tag=!detached,scores={switch.alive=1}] run tellraw @a[tag=!detached] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Vous n'avez plus que 60 secondes pour terminer la course !\n"}]
execute if score #remaining_time switch.data matches 61.. run scoreboard players set #remaining_time switch.data 60
scoreboard players add @s switch.temp.checkpoint 1000000
scoreboard players operation @s switch.temp.checkpoint -= #kart_racer_ticks switch.data

tag @s add shopping_kart.temp
kill @e[tag=shopping_kart.kart,predicate=shopping_kart:have_temp_player_passenger]
kill @e[type=item]
tag @s remove shopping_kart.temp

