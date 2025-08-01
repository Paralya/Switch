
#> switch:modes/glassrunner/shop/arrow
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/glassrunner/tick_player
#

clear @s flint[custom_data~{to_clear:true}]

# item_name : Flèches x5 
# lore : Vous ravitaille en flèches !
# lore : Prix : 5 levels
function switch:modes/glassrunner/shop/reset_item



execute if score @s switch.glassrunner.money matches 5.. run give @s arrow 5

function switch:translations/modes_glassrunner_shop_arrow

execute if score @s switch.glassrunner.money matches 5.. run xp add @s -5 levels
execute if score @s switch.glassrunner.money matches 5.. run scoreboard players remove @s switch.glassrunner.money 5

