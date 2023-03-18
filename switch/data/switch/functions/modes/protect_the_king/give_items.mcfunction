
# Starter kit
scoreboard players set #armor switch.data 0
scoreboard players set #sword switch.data 0
execute if predicate switch:chance/0.5 run scoreboard players set #armor switch.data 1
execute if predicate switch:chance/0.5 run scoreboard players set #sword switch.data 1
execute if score #armor switch.data matches 0 run item replace entity @s armor.chest with diamond_chestplate
execute if score #armor switch.data matches 0 run item replace entity @s armor.legs with iron_leggings{Enchantments:[{id:"minecraft:protection",lvl:2s}]}
execute if score #armor switch.data matches 0 run item replace entity @s armor.feet with diamond_boots
execute if score #armor switch.data matches 1 run item replace entity @s armor.chest with iron_chestplate{Enchantments:[{id:"minecraft:protection",lvl:1s}]}
execute if score #armor switch.data matches 1 run item replace entity @s armor.legs with diamond_leggings
execute if score #armor switch.data matches 1 run item replace entity @s armor.feet with iron_boots{Enchantments:[{id:"minecraft:protection",lvl:2s}]}
execute if score #sword switch.data matches 1 run item replace entity @s hotbar.0 with diamond_sword{Enchantments:[{id:"minecraft:sharpness",lvl:1s}]}
execute if score #sword switch.data matches 0 run item replace entity @s hotbar.0 with iron_sword{Enchantments:[{id:"minecraft:sharpness",lvl:2s}]}
item replace entity @s hotbar.1 with bow{Enchantments:[{id:"minecraft:power",lvl:1s}]}
item replace entity @s hotbar.3 with stone_axe
item replace entity @s hotbar.4 with golden_apple 6
item replace entity @s hotbar.6 with arrow 28
item replace entity @s hotbar.7 with water_bucket
item replace entity @s hotbar.8 with apple 16
give @s oak_planks 100
give @s anvil

effect give @s[tag=switch.king] glowing 99999 255 true
item replace entity @s[tag=switch.king] armor.chest with diamond_chestplate{Enchantments:[{id:"minecraft:protection",lvl:2s}]}
item replace entity @s[tag=switch.king] armor.legs with iron_leggings{Enchantments:[{id:"minecraft:protection",lvl:2s}]}
item replace entity @s[tag=switch.king] armor.feet with diamond_boots{Enchantments:[{id:"minecraft:protection",lvl:2s}]}
item replace entity @s[tag=switch.king] hotbar.0 with netherite_sword{Enchantments:[{id:"minecraft:sharpness",lvl:2s}]}
attribute @s[tag=switch.king] generic.max_health base set 40.0

# Leather cap color
item replace entity @s[team=switch.temp.red] armor.head with leather_helmet{display:{color:16711680},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;0,-1,-1,0],Slot:"head"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:2,Operation:0,UUID:[I;1,-1,-1,-1],Slot:"head"}]}
item replace entity @s[team=switch.temp.red_king] armor.head with leather_helmet{display:{color:16711680},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;0,-1,-1,0],Slot:"head"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:2,Operation:0,UUID:[I;1,-1,-1,-1],Slot:"head"}]}
item replace entity @s[team=switch.temp.blue] armor.head with leather_helmet{display:{color:255},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;0,-1,-1,0],Slot:"head"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:2,Operation:0,UUID:[I;1,-1,-1,-1],Slot:"head"}]}
item replace entity @s[team=switch.temp.blue_king] armor.head with leather_helmet{display:{color:255},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;0,-1,-1,0],Slot:"head"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:2,Operation:0,UUID:[I;1,-1,-1,-1],Slot:"head"}]}

attribute @s generic.attack_speed base set 1024
xp set @s 100 levels
xp set @s 0 points

