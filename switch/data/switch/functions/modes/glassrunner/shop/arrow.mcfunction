



clear @s flint{to_clear:1b}

#Name : Flèches x5 
#Lore : Vous ravitaille en flèches !
#Lore : Prix : 5 levels
# item replace entity @s inventory.10 with minecraft:snow_block{to_clear:1b,display:{Name:'[{"text":"Snowball renforcée x5","color":"white","italic":false}]',Lore:['[{"text":"Permet de faire des bridges dirrectement en vitre foncée !","color":"dark_gray","italic":false}]','[{"text":"Prix : ","color":"dark_gray","italic":false},{"text":"8 levels","color":"gold"}]']},HideFlags:1}


item replace entity @s inventory.12 with flint{to_clear:1b,display:{Name:'[{"text":"Flèches x5","color":"white","italic":false}]',Lore:['[{"text":"Vous ravitaille en flèches !","color":"dark_gray","italic":false}]','[{"text":"Prix : ","color":"dark_gray","italic":false},{"text":"5 levels","color":"gold"}]']},HideFlags:1}

execute unless score @s switch.glassrunner.money matches 5.. run tellraw @s ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Tu n'as pas assez d'argent","color": "red"}]



execute if score @s switch.glassrunner.money matches 5.. run give @s arrow 5

execute if score @s switch.glassrunner.money matches 5.. run tellraw @s ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Tu viens d'acheter 5 flèches","color": "green"}]

execute if score @s switch.glassrunner.money matches 5.. run xp add @s -5 levels
execute if score @s switch.glassrunner.money matches 5.. run scoreboard players remove @s switch.glassrunner.money 5



