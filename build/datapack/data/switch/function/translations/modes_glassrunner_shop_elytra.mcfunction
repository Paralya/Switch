
#> switch:translations/modes_glassrunner_shop_elytra
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/glassrunner/shop/elytra
#

# French
execute unless score @s switch.glassrunner.money matches 20.. run tellraw @s[scores={switch.lang=0}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Tu n'as pas assez d'argent","color":"red"}]
execute if score @s switch.glassrunner.money matches 20.. run tellraw @s[scores={switch.lang=0}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Tu viens d'acheter une utilisation d'elytra","color":"green"}]

# English
execute unless score @s switch.glassrunner.money matches 20.. run tellraw @s[scores={switch.lang=1}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" You don't have enough coins","color":"red"}]
execute if score @s switch.glassrunner.money matches 20.. run tellraw @s[scores={switch.lang=1}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" You've just bought a use of elytra","color":"green"}]

