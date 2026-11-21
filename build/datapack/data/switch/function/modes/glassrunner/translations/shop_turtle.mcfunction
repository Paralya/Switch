
#> switch:modes/glassrunner/translations/shop_turtle
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/glassrunner/shop/turtle
#

# French
execute unless score @s switch.glassrunner.money matches 12.. run tellraw @s[scores={switch.lang=0}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Tu n'as pas assez d'argent","color":"#FF3347"}]
execute if score @s switch.glassrunner.money matches 12.. run tellraw @s[scores={switch.lang=0}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Tu viens d'acheter un casque de tortue","color":"#2EFF8B"}]

# English
execute unless score @s switch.glassrunner.money matches 12.. run tellraw @s[scores={switch.lang=1}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" You don't have enough coins","color":"#FF3347"}]
execute if score @s switch.glassrunner.money matches 12.. run tellraw @s[scores={switch.lang=1}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" You just bought a turtle helmet","color":"#2EFF8B"}]

