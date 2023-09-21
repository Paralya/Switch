
# Starter kit
clear @s
item replace entity @s[team=switch.temp.civil] armor.head with leather_helmet{Enchantments:[{id:"minecraft:protection",lvl:5s},{id:"minecraft:unbreaking",lvl:4s}]}
item replace entity @s[team=switch.temp.civil] armor.chest with leather_chestplate{Enchantments:[{id:"minecraft:fire_protection",lvl:4s},{id:"minecraft:unbreaking",lvl:4s}]}
item replace entity @s[team=switch.temp.civil] armor.legs with leather_leggings{Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:unbreaking",lvl:4s}]}
item replace entity @s[team=switch.temp.civil] armor.feet with iron_boots{Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:unbreaking",lvl:2s},{id:"minecraft:feather_falling",lvl:2s}]}
item replace entity @s[team=switch.temp.civil] hotbar.0 with wooden_sword{Enchantments:[{id:"minecraft:sharpness",lvl:5s},{id:"minecraft:unbreaking",lvl:10s}]}
item replace entity @s[team=switch.temp.civil] hotbar.1 with bow
item replace entity @s[team=switch.temp.civil] hotbar.3 with oak_planks 64
item replace entity @s[team=switch.temp.civil] hotbar.7 with water_bucket
item replace entity @s[team=switch.temp.civil] hotbar.8 with golden_apple 5
item replace entity @s[team=switch.temp.civil] inventory.0 with arrow 16

item replace entity @s[team=switch.temp.king] hotbar.0 with water_bucket
item replace entity @s[team=switch.temp.king] hotbar.1 with golden_sword{Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:sharpness",lvl:2s}]}
item replace entity @s[team=switch.temp.king] hotbar.3 with bow{Enchantments:[{id:"minecraft:flame",lvl:1s}]}
item replace entity @s[team=switch.temp.king] hotbar.7 with golden_apple 7
item replace entity @s[team=switch.temp.king] hotbar.8 with oak_planks 64
item replace entity @s[team=switch.temp.king] inventory.0 with arrow 42
effect give @s[team=switch.temp.king] resistance infinite 2 true
effect give @s[team=switch.temp.king] speed infinite 0 true
effect give @s[team=switch.temp.king] health_boost infinite 1 true


effect give @s resistance 10 255 true
attribute @s generic.attack_speed base set 1024
xp set @s 0 levels
xp set @s 0 points

