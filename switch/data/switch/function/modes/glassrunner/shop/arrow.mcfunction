



clear @s flint{to_clear:1b}

#Name : Flèches x5 
#Lore : Vous ravitaille en flèches !
#Lore : Prix : 5 levels
function switch:modes/glassrunner/shop/reset_item





execute if score @s switch.glassrunner.money matches 5.. run give @s arrow 5

function switch:translations/modes_glassrunner_shop_arrow

execute if score @s switch.glassrunner.money matches 5.. run xp add @s -5 levels
execute if score @s switch.glassrunner.money matches 5.. run scoreboard players remove @s switch.glassrunner.money 5



