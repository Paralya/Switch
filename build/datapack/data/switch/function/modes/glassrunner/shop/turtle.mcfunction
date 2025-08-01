
#> switch:modes/glassrunner/shop/turtle
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/glassrunner/tick_player
#

clear @s turtle_helmet[custom_data~{to_clear:true}]

# item_name : Flèches x5 
# lore : Vous ravitaille en flèches !
# lore : Prix : 5 levels
function switch:modes/glassrunner/shop/reset_item



execute if score @s switch.glassrunner.money matches 12.. run scoreboard players add @s switch.glassrunner.turtle_helmet 200

function switch:translations/modes_glassrunner_shop_turtle

execute if score @s switch.glassrunner.money matches 12.. run xp add @s -12 levels
execute if score @s switch.glassrunner.money matches 12.. run scoreboard players remove @s switch.glassrunner.money 12

