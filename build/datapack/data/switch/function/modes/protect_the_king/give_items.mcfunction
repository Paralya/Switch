
#> switch:modes/protect_the_king/give_items
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/protect_the_king/start [ as @a[tag=!detached] & at @s ]
#

# Starter kit
loot replace entity @s armor.chest loot switch:i/steel_chestplate
item replace entity @s armor.legs with chainmail_leggings[enchantments={protection:2}]
item replace entity @s armor.feet with chainmail_boots[enchantments={projectile_protection:5}]
item replace entity @s inventory.0 with oak_planks 36
data modify storage switch:layout kit set value {reserved:[],items:[{i:0,role:"melee",claim:1,canon:1,sibling:0},{i:1,role:"ranged",claim:1,canon:2,sibling:0},{i:2,role:"axe",claim:1,canon:4,sibling:0},{i:3,role:"ammo",claim:1,canon:7,sibling:0},{i:4,role:"mobility",claim:1,canon:8,sibling:0},{i:5,role:"heal",claim:1,canon:9,sibling:0},{i:6,role:"blocks",claim:1,canon:3,sibling:0},{i:7,role:"special",claim:1,canon:5,sibling:0}]}
function switch:player/layout/resolve
function switch:modes/protect_the_king/give_items/items with storage switch:layout out
effect give @s[team=!switch.temp.red,team=!switch.temp.blue] glowing infinite 255 true
attribute @s[team=!switch.temp.red,team=!switch.temp.blue] max_health base set 40.0

# Leather cap color
item replace entity @s[team=switch.temp.red] armor.head with leather_helmet[unbreakable={},enchantments={protection:2},dyed_color=16711680,attribute_modifiers=[{type:"armor",slot:"head",id:"switch.helmet.armor",amount:3,operation:"add_value"},{type:"armor_toughness",slot:"head",id:"switch.helmet.armor_toughness",amount:2,operation:"add_value"}]]
item replace entity @s[team=switch.temp.red_king] armor.head with diamond_helmet[unbreakable={},enchantments={protection:2},item_model="switch:ruby_helmet",equippable={"slot":"head","asset_id":"switch:ruby"},attribute_modifiers=[{type:"armor",slot:"head",id:"switch.helmet.armor",amount:3,operation:"add_value"},{type:"armor_toughness",slot:"head",id:"switch.helmet.armor_toughness",amount:2,operation:"add_value"}]]
item replace entity @s[team=switch.temp.blue] armor.head with leather_helmet[unbreakable={},enchantments={protection:2},dyed_color=255,attribute_modifiers=[{type:"armor",slot:"head",id:"switch.helmet.armor",amount:3,operation:"add_value"},{type:"armor_toughness",slot:"head",id:"switch.helmet.armor_toughness",amount:2,operation:"add_value"}]]
item replace entity @s[team=switch.temp.blue_king] armor.head with diamond_helmet[unbreakable={},enchantments={protection:2},item_model="switch:sapphire_helmet",equippable={"slot":"head","asset_id":"switch:sapphire"},attribute_modifiers=[{type:"armor",slot:"head",id:"switch.helmet.armor",amount:3,operation:"add_value"},{type:"armor_toughness",slot:"head",id:"switch.helmet.armor_toughness",amount:2,operation:"add_value"}]]

