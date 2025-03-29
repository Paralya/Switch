
# Give sword
execute store result score #random switch.data run random value 0..3
execute if score #random switch.data matches 0 run item replace entity @s hotbar.0 with diamond_sword[item_model="switch:stardust_sword",unbreakable=true,tooltip_display={"hidden_components":["minecraft:unbreakable"]},enchantments={"knockback":3}]
execute if score #random switch.data matches 1 run item replace entity @s hotbar.0 with diamond_sword[item_model="switch:legendarium_sword",unbreakable=true,tooltip_display={"hidden_components":["minecraft:unbreakable"]},enchantments={"knockback":3}]
execute if score #random switch.data matches 2 run item replace entity @s hotbar.0 with diamond_sword[item_model="switch:solarium_sword",unbreakable=true,tooltip_display={"hidden_components":["minecraft:unbreakable"]},enchantments={"knockback":3}]
execute if score #random switch.data matches 3 run item replace entity @s hotbar.0 with diamond_sword[item_model="switch:darkium_sword",unbreakable=true,tooltip_display={"hidden_components":["minecraft:unbreakable"]},enchantments={"knockback":3}]

# Give bow
execute store result score #random switch.data run random value 0..2
execute if score #random switch.data matches 0 run item replace entity @s hotbar.1 with bow[item_model="switch:stardust_bow",unbreakable=true,tooltip_display={"hidden_components":["minecraft:unbreakable"]},enchantments={"punch":3, "infinity":1}]
execute if score #random switch.data matches 1 run item replace entity @s hotbar.1 with bow[item_model="switch:awakened_stardust_bow",unbreakable=true,tooltip_display={"hidden_components":["minecraft:unbreakable"]},enchantments={"punch":3, "infinity":1}]
execute if score #random switch.data matches 2 run item replace entity @s hotbar.1 with bow[item_model="switch:ultimate_bow",unbreakable=true,tooltip_display={"hidden_components":["minecraft:unbreakable"]},enchantments={"punch":3, "infinity":1}]

# Give arrows
item replace entity @s hotbar.2 with arrow 64

# Give depending on the upgrades
execute if score @s switch.pitchout.boots matches 0 run item replace entity @s armor.feet with leather_boots[max_damage=5]
execute if score @s switch.pitchout.boots matches 1 run item replace entity @s armor.feet with leather_boots[max_damage=20]
execute if score @s switch.pitchout.boots matches 2 run item replace entity @s armor.feet with leather_boots[max_damage=30]
execute if score @s switch.pitchout.boots matches 3 run item replace entity @s armor.feet with leather_boots[max_damage=40]
execute if score @s switch.pitchout.boots matches 4 run item replace entity @s armor.feet with leather_boots[max_damage=50]
execute if score @s switch.pitchout.boots matches 5.. run item replace entity @s armor.feet with leather_boots[max_damage=65]
execute if score @s switch.pitchout.ender_pearl matches 0 run item replace entity @s hotbar.8 with ender_pearl[item_model="switch:dragon_pearl"] 3
execute if score @s switch.pitchout.ender_pearl matches 1 run item replace entity @s hotbar.8 with ender_pearl[item_model="switch:dragon_pearl"] 4
execute if score @s switch.pitchout.ender_pearl matches 2.. run item replace entity @s hotbar.8 with ender_pearl[item_model="switch:dragon_pearl"] 5
