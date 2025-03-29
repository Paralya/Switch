
#> switch:modes/glassrunner/shop/apocalypse
#
# @within	switch:modes/glassrunner/tick_player
#




clear @s ghast_tear[custom_data~{to_clear:true}]

# item_name : Flèches x5 
# lore : Vous ravitaille en flèches !
# lore : Prix : 5 levels
function switch:modes/glassrunner/shop/reset_item





execute if score @s switch.glassrunner.money matches 25.. if entity @s[team=switch.glassrunner.red] as @a[team=switch.glassrunner.blue] run scoreboard players add @s switch.glassrunner.apocalypse 10
execute if score @s switch.glassrunner.money matches 25.. if entity @s[team=switch.glassrunner.blue] as @a[team=switch.glassrunner.red] run scoreboard players add @s switch.glassrunner.apocalypse 10

function switch:translations/modes_glassrunner_shop_apocalypse

execute if score @s switch.glassrunner.money matches 25.. run xp add @s -25 levels
execute if score @s switch.glassrunner.money matches 25.. run scoreboard players remove @s switch.glassrunner.money 25



