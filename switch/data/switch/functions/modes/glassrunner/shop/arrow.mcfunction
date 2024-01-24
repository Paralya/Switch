



clear @s flint{to_clear:1b}

#Name : Flèches x5 
#Lore : Vous ravitaille en flèches !
#Lore : Prix : 5 levels
function switch:modes/glassrunner/shop/reset_item


execute unless score @s switch.glassrunner.money matches 5.. run tellraw @s ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Tu n'as pas assez d'argent","color": "red"}]



execute if score @s switch.glassrunner.money matches 5.. run give @s arrow 5

execute if score @s switch.glassrunner.money matches 5.. run tellraw @s ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Tu viens d'acheter 5 flèches","color": "green"}]

execute if score @s switch.glassrunner.money matches 5.. run xp add @s -5 levels
execute if score @s switch.glassrunner.money matches 5.. run scoreboard players remove @s switch.glassrunner.money 5



