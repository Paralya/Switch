
#> switch:modes/protect_the_king/give_items
#
# @within	switch:modes/protect_the_king/start
#

# Starter kit
loot replace entity @s armor.chest loot switch:i/steel_chestplate
item replace entity @s armor.legs with chainmail_leggings[enchantments={protection:2}]
item replace entity @s armor.feet with chainmail_boots[enchantments={projectile_protection:5}]
loot replace entity @s hotbar.0 loot switch:i/steel_sword
item modify entity @s hotbar.0 {function:"minecraft:set_enchantments",enchantments:{"minecraft:knockback":1}}
item replace entity @s hotbar.1 with bow
item replace entity @s hotbar.3 with stone_axe
item replace entity @s hotbar.6 with arrow 28
item replace entity @s hotbar.7 with water_bucket
item replace entity @s hotbar.8 with golden_apple 6
give @s oak_planks 100
give @s anvil

effect give @s[team=!switch.temp.red,team=!switch.temp.blue] glowing infinite 255 true
item replace entity @s[team=!switch.temp.red,team=!switch.temp.blue] hotbar.0 with netherite_sword[enchantments={sharpness:3}]
attribute @s[team=!switch.temp.red,team=!switch.temp.blue] max_health base set 40.0

# Leather cap color
item replace entity @s[team=switch.temp.red] armor.head with leather_helmet[unbreakable={},enchantments={protection:2},dyed_color=16711680,attribute_modifiers=[{type:"armor",slot:"head",id:"switch.helmet.armor",amount:3,operation:"add_value"},{type:"armor_toughness",slot:"head",id:"switch.helmet.armor_toughness",amount:2,operation:"add_value"}]]
item replace entity @s[team=switch.temp.red_king] armor.head with diamond_helmet[unbreakable={},enchantments={protection:2},item_model="switch:ruby_helmet",equippable={"slot":"head","asset_id":"switch:ruby"},attribute_modifiers=[{type:"armor",slot:"head",id:"switch.helmet.armor",amount:3,operation:"add_value"},{type:"armor_toughness",slot:"head",id:"switch.helmet.armor_toughness",amount:2,operation:"add_value"}]]
item replace entity @s[team=switch.temp.blue] armor.head with leather_helmet[unbreakable={},enchantments={protection:2},dyed_color=255,attribute_modifiers=[{type:"armor",slot:"head",id:"switch.helmet.armor",amount:3,operation:"add_value"},{type:"armor_toughness",slot:"head",id:"switch.helmet.armor_toughness",amount:2,operation:"add_value"}]]
item replace entity @s[team=switch.temp.blue_king] armor.head with diamond_helmet[unbreakable={},enchantments={protection:2},item_model="switch:sapphire_helmet",equippable={"slot":"head","asset_id":"switch:sapphire"},attribute_modifiers=[{type:"armor",slot:"head",id:"switch.helmet.armor",amount:3,operation:"add_value"},{type:"armor_toughness",slot:"head",id:"switch.helmet.armor_toughness",amount:2,operation:"add_value"}]]

