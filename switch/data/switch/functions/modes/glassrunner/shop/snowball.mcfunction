

clear @s snow_block{to_clear:1b}

#Name : Snowball renforcée x5 
#Lore : Permet de faire des bridges dirrectement en vitre foncée !
#Lore : Prix : 8 levels

item replace entity @s inventory.10 with minecraft:snow_block{to_clear:1b,display:{Name:'[{"text":"Snowball renforcée x5","color":"white","italic":false}]',Lore:['[{"text":"Permet de faire des bridges dirrectement en vitre foncée !","color":"dark_gray","italic":false}]','[{"text":"Prix : ","color":"dark_gray","italic":false},{"text":"8 levels","color":"gold"}]']},HideFlags:1}


execute unless score @s switch.glassrunner.money matches 8.. run tellraw @s ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Tu n'as pas assez d'argent","color": "red"}]



execute if score @s[team=switch.glassrunner.red] switch.glassrunner.money matches 8.. run loot give @s loot switch:glassrunner/renforced_snowball_bridge_red_x5
execute if score @s[team=switch.glassrunner.blue] switch.glassrunner.money matches 8.. run loot give @s loot switch:glassrunner/renforced_snowball_bridge_blue_x5

execute if score @s switch.glassrunner.money matches 8.. run tellraw @s ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Tu viens d'acheter 5 snowball renforcées","color": "green"}]

execute if score @s switch.glassrunner.money matches 8.. run xp add @s -8 levels
execute if score @s switch.glassrunner.money matches 8.. run scoreboard players remove @s switch.glassrunner.money 8
