



clear @s ghast_tear{to_clear:1b}

#Name : Flèches x5 
#Lore : Vous ravitaille en flèches !
#Lore : Prix : 5 levels
function switch:modes/glassrunner/shop/reset_item


execute unless score @s switch.glassrunner.money matches 25.. run tellraw @s ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Tu n'as pas assez d'argent","color": "red"}]



execute if score @s switch.glassrunner.money matches 25.. if entity @s[team=switch.glassrunner.red] as @a[team=switch.glassrunner.blue] run scoreboard players add @s switch.glassrunner.apocalypse 10
execute if score @s switch.glassrunner.money matches 25.. if entity @s[team=switch.glassrunner.blue] as @a[team=switch.glassrunner.red] run scoreboard players add @s switch.glassrunner.apocalypse 10

execute if score @s switch.glassrunner.money matches 25.. run tellraw @s ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" L'équipe adverse pleure","color": "green"}]

execute if score @s switch.glassrunner.money matches 25.. run xp add @s -25 levels
execute if score @s switch.glassrunner.money matches 25.. run scoreboard players remove @s switch.glassrunner.money 25



