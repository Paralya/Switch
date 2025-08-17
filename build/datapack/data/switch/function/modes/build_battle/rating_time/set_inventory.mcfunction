
#> switch:modes/build_battle/rating_time/set_inventory
#
# @executed	as @a[tag=!detached]
#
# @within	switch:modes/build_battle/rating_time/second [ as @a[tag=!detached] ]
#

clear @s
item replace entity @s weapon.offhand with warped_fungus_on_a_stick[unbreakable={},item_model="minecraft:air",attribute_modifiers=[{id:"block_interaction_range",type:"block_interaction_range",amount:-1024,operation:"add_value",slot:"any",display:{type:"hidden"}}]]
item replace entity @s hotbar.0 with brown_concrete[item_name={"text":"Super Poop","color":"#8B4513"},attribute_modifiers=[{id:"block_interaction_range",type:"block_interaction_range",amount:-1024,operation:"add_value",slot:"any",display:{type:"hidden"}}]]
item replace entity @s hotbar.1 with red_concrete[item_name={"text":"Poop","color":"red"},attribute_modifiers=[{id:"block_interaction_range",type:"block_interaction_range",amount:-1024,operation:"add_value",slot:"any",display:{type:"hidden"}}]]
item replace entity @s hotbar.2 with green_concrete[item_name={"text":"OK","color":"dark_green"},attribute_modifiers=[{id:"block_interaction_range",type:"block_interaction_range",amount:-1024,operation:"add_value",slot:"any",display:{type:"hidden"}}]]
item replace entity @s hotbar.3 with lime_concrete[item_name={"text":"Good","color":"green"},attribute_modifiers=[{id:"block_interaction_range",type:"block_interaction_range",amount:-1024,operation:"add_value",slot:"any",display:{type:"hidden"}}]]
item replace entity @s hotbar.4 with magenta_concrete[item_name={"text":"Epic","color":"light_purple"},attribute_modifiers=[{id:"block_interaction_range",type:"block_interaction_range",amount:-1024,operation:"add_value",slot:"any",display:{type:"hidden"}}]]
item replace entity @s hotbar.5 with yellow_concrete[item_name={"text":"Legendary","color":"gold"},attribute_modifiers=[{id:"block_interaction_range",type:"block_interaction_range",amount:-1024,operation:"add_value",slot:"any",display:{type:"hidden"}}]]

