
#> switch:modes/glassrunner/shop/snowball
#
# @within	switch:modes/glassrunner/tick_player
#


clear @s snow_block[custom_data~{to_clear:true}]

#Name : Snowball renforcée x5 
#Lore : Permet de faire des bridges dirrectement en vitre foncée !
#Lore : Prix : 8 levels
function switch:modes/glassrunner/shop/reset_item


execute if score @s[team=switch.glassrunner.red] switch.glassrunner.money matches 8.. run loot give @s loot switch:glassrunner/renforced_snowball_bridge_red_x5
execute if score @s[team=switch.glassrunner.blue] switch.glassrunner.money matches 8.. run loot give @s loot switch:glassrunner/renforced_snowball_bridge_blue_x5

function switch:translations/modes_glassrunner_shop_snowball

execute if score @s switch.glassrunner.money matches 8.. run xp add @s -8 levels
execute if score @s switch.glassrunner.money matches 8.. run scoreboard players remove @s switch.glassrunner.money 8

