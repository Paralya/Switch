
# French
execute unless score @s switch.glassrunner.money matches 5.. run tellraw @s[scores={switch.lang=0}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Tu n'as pas assez d'argent","color": "red"}]
execute if score @s switch.glassrunner.money matches 5.. run tellraw @s[scores={switch.lang=0}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Tu viens d'acheter 5 flèches","color": "green"}]

