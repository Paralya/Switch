
#> switch:translations/modes_glassrunner_shop_apocalypse
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/glassrunner/shop/apocalypse
#

# French
execute unless score @s switch.glassrunner.money matches 25.. run tellraw @s[scores={switch.lang=0}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Tu n'as pas assez d'argent","color":"red"}]
execute if score @s switch.glassrunner.money matches 25.. run tellraw @s[scores={switch.lang=0}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" L'équipe adverse pleure","color":"green"}]

# English
execute unless score @s switch.glassrunner.money matches 25.. run tellraw @s[scores={switch.lang=1}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" You don't have enough coins","color":"red"}]
execute if score @s switch.glassrunner.money matches 25.. run tellraw @s[scores={switch.lang=1}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" The other team is crying fr","color":"green"}]

