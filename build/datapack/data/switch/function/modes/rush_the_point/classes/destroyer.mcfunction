
#> switch:modes/rush_the_point/classes/destroyer
#
# @executed	as the player & at current position
#
# @within	switch:modes/rush_the_point/classes/main
#

function switch:modes/rush_the_point/classes/_kit_base
item replace entity @s hotbar.0 with warped_fungus_on_a_stick[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},item_name={"text":"Fireball Wand","color":"gold","italic":false},item_model="switch:fireball_wand",custom_data={switch:{fireball_wand:true}}]
item replace entity @s hotbar.1 with iron_sword[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},enchantments={"knockback":1},can_break={blocks:"#switch:rush_the_point/can_break"}]
item replace entity @s hotbar.2 with diamond_pickaxe[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},can_break={blocks:"#switch:rush_the_point/can_break"}]
item replace entity @s hotbar.3 with cut_sandstone[can_place_on={blocks:"#switch:rush_the_point/can_place_on"}] 64
function switch:modes/rush_the_point/classes/_healing_food

