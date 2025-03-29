
# Give sword
execute store result score #random switch.data run random value 0..3
# execute if score #random switch.data matches 0 run loot insert 0 0 0 loot stardust:i/original_stardust_sword
# execute if score #random switch.data matches 1 run loot insert 0 0 0 loot stardust:i/legendarium_sword
# execute if score #random switch.data matches 2 run loot insert 0 0 0 loot stardust:i/solarium_sword
# execute if score #random switch.data matches 3 run loot insert 0 0 0 loot stardust:i/darkium_sword
execute if score #random switch.data matches 0 run item replace entity @s hotbar.0 with diamond_sword[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},enchantments={"knockback":3}]
execute if score #random switch.data matches 1 run item replace entity @s hotbar.0 with diamond_sword[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},enchantments={"knockback":3}]
execute if score #random switch.data matches 2 run item replace entity @s hotbar.0 with diamond_sword[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},enchantments={"knockback":3}]
execute if score #random switch.data matches 3 run item replace entity @s hotbar.0 with diamond_sword[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},enchantments={"knockback":3}]

# Give bow
execute store result score #random switch.data run random value 0..2
# execute if score #random switch.data matches 0 run loot insert 0 0 0 loot stardust:i/stardust_bow
# execute if score #random switch.data matches 1 run loot insert 0 0 0 loot stardust:i/awakened_stardust_bow
# execute if score #random switch.data matches 2 run loot insert 0 0 0 loot stardust:i/ultimate_bow
execute if score #random switch.data matches 0 run item replace entity @s hotbar.1 with bow[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},enchantments={"punch":3}]
execute if score #random switch.data matches 1 run item replace entity @s hotbar.1 with bow[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},enchantments={"punch":3}]
execute if score #random switch.data matches 2 run item replace entity @s hotbar.1 with bow[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},enchantments={"punch":3}]

# Give arrows
item replace entity @s hotbar.2 with arrow 64

