
#> switch:modes/tnt_run/give_items
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/tnt_run/start [ as @a[tag=!detached] & at @s ]
#

# French
item replace entity @s[scores={switch.lang=0}] hotbar.4 with warped_fungus_on_a_stick[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},item_model="minecraft:rabbit_foot",item_name={"text":"Dash","color":"aqua"},lore=[{"text":"Clic droit pour foncer (100 blocs détruits = +1 dash)","color":"gray","italic":false}],custom_data={"switch":{"tnt_run_dash":true}}]

# English
item replace entity @s[scores={switch.lang=1}] hotbar.4 with warped_fungus_on_a_stick[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},item_model="minecraft:rabbit_foot",item_name={"text":"Dash","color":"aqua"},lore=[{"text":"Right click to dash (100 blocks destroyed = +1 dash)","color":"gray","italic":false}],custom_data={"switch":{"tnt_run_dash":true}}]

