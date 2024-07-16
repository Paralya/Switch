
# Starter kit
scoreboard players set #armor switch.data 0
scoreboard players set #sword switch.data 0
execute if predicate switch:chance/0.5 run scoreboard players set #armor switch.data 1
execute if predicate switch:chance/0.5 run scoreboard players set #sword switch.data 1
execute if score #armor switch.data matches 0 run item replace entity @s armor.chest with diamond_chestplate
execute if score #armor switch.data matches 0 run item replace entity @s armor.legs with iron_leggings[enchantments={protection:2}]
execute if score #armor switch.data matches 0 run item replace entity @s armor.feet with diamond_boots
execute if score #armor switch.data matches 1 run item replace entity @s armor.chest with iron_chestplate[enchantments={protection:1}]
execute if score #armor switch.data matches 1 run item replace entity @s armor.legs with diamond_leggings
execute if score #armor switch.data matches 1 run item replace entity @s armor.feet with iron_boots[enchantments={protection:2}]
execute if score #sword switch.data matches 1 run item replace entity @s hotbar.0 with diamond_sword[enchantments={sharpness:1}]
execute if score #sword switch.data matches 0 run item replace entity @s hotbar.0 with iron_sword[enchantments={sharpness:3}]
item replace entity @s hotbar.1 with bow[enchantments={power:1}]
item replace entity @s hotbar.3 with stone_axe
item replace entity @s hotbar.6 with arrow 28
item replace entity @s hotbar.7 with water_bucket
item replace entity @s hotbar.8 with golden_apple 6
give @s oak_planks 100
give @s anvil

effect give @s[team=!switch.temp.red,team=!switch.temp.blue] glowing infinite 255 true
item replace entity @s[team=!switch.temp.red,team=!switch.temp.blue] hotbar.0 with netherite_sword[enchantments={sharpness:3}]
attribute @s[team=!switch.temp.red,team=!switch.temp.blue] generic.max_health base set 40.0

# Leather cap color
item replace entity @s[team=switch.temp.red] armor.head with leather_helmet[unbreakable={},enchantments={protection:2},dyed_color=16711680,attribute_modifiers=[{type:"generic.armor",slot:"head",id:"switch.helmet.armor",amount:3,operation:"add_value"},{type:"generic.armor_toughness",slot:"head",id:"switch.helmet.armor_toughness",amount:2,operation:"add_value"}]]
item replace entity @s[team=switch.temp.red_king] armor.head with leather_helmet[unbreakable={},enchantments={protection:2},dyed_color=16711680,attribute_modifiers=[{type:"generic.armor",slot:"head",id:"switch.helmet.armor",amount:3,operation:"add_value"},{type:"generic.armor_toughness",slot:"head",id:"switch.helmet.armor_toughness",amount:2,operation:"add_value"}]]
item replace entity @s[team=switch.temp.blue] armor.head with leather_helmet[unbreakable={},enchantments={protection:2},dyed_color=255,attribute_modifiers=[{type:"generic.armor",slot:"head",id:"switch.helmet.armor",amount:3,operation:"add_value"},{type:"generic.armor_toughness",slot:"head",id:"switch.helmet.armor_toughness",amount:2,operation:"add_value"}]]
item replace entity @s[team=switch.temp.blue_king] armor.head with leather_helmet[unbreakable={},enchantments={protection:2},dyed_color=255,attribute_modifiers=[{type:"generic.armor",slot:"head",id:"switch.helmet.armor",amount:3,operation:"add_value"},{type:"generic.armor_toughness",slot:"head",id:"switch.helmet.armor_toughness",amount:2,operation:"add_value"}]]

