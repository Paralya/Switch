



clear @s elytra{to_clear:1b}

#Name : Flèches x5 
#Lore : Vous ravitaille en flèches !
#Lore : Prix : 5 levels
function switch:modes/glassrunner/shop/reset_item





execute if score @s switch.glassrunner.money matches 20.. run effect give @s minecraft:levitation 1 40 true 
execute if score @s switch.glassrunner.money matches 20.. run scoreboard players set @s switch.glassrunner.elytra 20

function switch:translations/modes_glassrunner_shop_elytra

execute if score @s switch.glassrunner.money matches 20.. run xp add @s -20 levels
execute if score @s switch.glassrunner.money matches 20.. run scoreboard players remove @s switch.glassrunner.money 20



