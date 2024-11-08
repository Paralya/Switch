
#> switch:translations/modes_glassrunner_shop_turtle
#
# @within	switch:modes/glassrunner/shop/turtle
#

# French
execute unless score @s switch.glassrunner.money matches 12.. run tellraw @s[scores={switch.lang=0}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Tu n'as pas assez d'argent","color":"red"}]
execute if score @s switch.glassrunner.money matches 12.. run tellraw @s[scores={switch.lang=0}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Tu viens d'acheter un casque de tortue","color":"green"}]

# English
execute unless score @s switch.glassrunner.money matches 12.. run tellraw @s[scores={switch.lang=1}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" You don't have enough coins","color":"red"}]
execute if score @s switch.glassrunner.money matches 12.. run tellraw @s[scores={switch.lang=1}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" You just bought a turtle helmet","color":"green"}]

