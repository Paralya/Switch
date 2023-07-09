
# Starter kit
item replace entity @s armor.head with diamond_helmet
item replace entity @s armor.chest with iron_chestplate{Enchantments:[{id:"minecraft:protection",lvl:1s}]}
item replace entity @s armor.legs with diamond_leggings
item replace entity @s armor.feet with iron_boots{Enchantments:[{id:"minecraft:protection",lvl:2s}]}
item replace entity @s hotbar.0 with diamond_sword{Enchantments:[{id:"minecraft:sharpness",lvl:1s},{id:"minecraft:knockback",lvl:1s}]}
item replace entity @s hotbar.1 with bow{Enchantments:[{id:"minecraft:power",lvl:1s}]}
item replace entity @s hotbar.2 with water_bucket
item replace entity @s hotbar.3 with iron_pickaxe{Enchantments:[{id:"minecraft:efficiency",lvl:1s}]}
item replace entity @s hotbar.4 with iron_axe{Enchantments:[{id:"minecraft:efficiency",lvl:1s}],AttributeModifiers:[{AttributeName:"minecraft:generic.attack_damage",Name:"minecraft:generic.attack_damage",Slot:"mainhand",Amount:5,Operation:0,UUID:[I;2012000,-2012000,-2012000,2012000]}]}
item replace entity @s hotbar.6 with arrow 6
item replace entity @s hotbar.7 with oak_planks 64
item replace entity @s hotbar.8 with golden_apple 12

# Random items (0 or 1 or 2)
execute if predicate switch:chance/0.5 run function switch:modes/traitors_game/random_items
execute if predicate switch:chance/0.5 run function switch:modes/traitors_game/random_items

attribute @s generic.attack_speed base set 1024
xp set @s 0 levels
xp set @s 0 points

