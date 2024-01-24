

clear @s snow_block{to_clear:1b}

#Name : Snowball renforcée x5 
#Lore : Permet de faire des bridges dirrectement en vitre foncée !
#Lore : Prix : 8 levels



execute unless score @s switch.glassrunner.money matches 8.. run tellraw @s ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Tu n'as pas assez d'argent","color": "red"}]



execute if score @s[team=switch.glassrunner.red] switch.glassrunner.money matches 8.. run loot give @s loot switch:glassrunner/renforced_snowball_bridge_red_x5
execute if score @s[team=switch.glassrunner.blue] switch.glassrunner.money matches 8.. run loot give @s loot switch:glassrunner/renforced_snowball_bridge_blue_x5

execute if score @s switch.glassrunner.money matches 8.. run tellraw @s ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Tu viens d'acheter 5 snowball renforcées","color": "green"}]

execute if score @s switch.glassrunner.money matches 8.. run xp add @s -8 levels
execute if score @s switch.glassrunner.money matches 8.. run scoreboard players remove @s switch.glassrunner.money 8
