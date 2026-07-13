
#> switch:modes/pitch_creep/give_items/items
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/pitch_creep/give_items with storage switch:layout out
#
# @args		s0 (unknown)
#			s1 (unknown)
#			s2 (unknown)
#

execute store result score #random switch.data run random value 0..3
$execute if score #random switch.data matches 0 run item replace entity @s $(s0) with diamond_sword[item_model="switch:stardust_sword",unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},enchantments={"knockback":3}]
$execute if score #random switch.data matches 1 run item replace entity @s $(s0) with diamond_sword[item_model="switch:legendarium_sword",unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},enchantments={"knockback":3}]
$execute if score #random switch.data matches 2 run item replace entity @s $(s0) with diamond_sword[item_model="switch:solarium_sword",unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},enchantments={"knockback":3}]
$execute if score #random switch.data matches 3 run item replace entity @s $(s0) with diamond_sword[item_model="switch:darkium_sword",unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},enchantments={"knockback":3}]
execute store result score #random switch.data run random value 0..2
$execute if score #random switch.data matches 0 run item replace entity @s $(s1) with bow[item_model="switch:stardust_bow",unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},enchantments={"punch":3, "infinity":1}]
$execute if score #random switch.data matches 1 run item replace entity @s $(s1) with bow[item_model="switch:awakened_stardust_bow",unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},enchantments={"punch":3, "infinity":1}]
$execute if score #random switch.data matches 2 run item replace entity @s $(s1) with bow[item_model="switch:ultimate_bow",unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},enchantments={"punch":3, "infinity":1}]
$item replace entity @s $(s2) with arrow 64

