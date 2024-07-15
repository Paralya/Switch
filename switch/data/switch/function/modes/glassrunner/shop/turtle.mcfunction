



clear @s turtle_helmet{to_clear:1b}

#Name : Flèches x5 
#Lore : Vous ravitaille en flèches !
#Lore : Prix : 5 levels
function switch:modes/glassrunner/shop/reset_item





execute if score @s switch.glassrunner.money matches 12.. run scoreboard players add @s switch.glassrunner.turtle_helmet 100

function switch:translations/modes_glassrunner_shop_turtle

execute if score @s switch.glassrunner.money matches 12.. run xp add @s -12 levels
execute if score @s switch.glassrunner.money matches 12.. run scoreboard players remove @s switch.glassrunner.money 12



