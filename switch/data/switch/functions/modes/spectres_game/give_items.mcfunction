
item replace entity @s[team=switch.temp.visible] armor.head with chainmail_helmet{Enchantments:[{id:"minecraft:protection",lvl:1s}]}
item replace entity @s[team=switch.temp.visible] armor.chest with iron_chestplate{Enchantments:[{id:"minecraft:fire_protection",lvl:1s}]}
item replace entity @s[team=switch.temp.visible] armor.legs with iron_leggings{Enchantments:[{id:"minecraft:protection",lvl:1s}]}
item replace entity @s[team=switch.temp.visible] armor.feet with diamond_boots{Enchantments:[{id:"minecraft:fire_protection",lvl:1s}]}
item replace entity @s[team=switch.temp.visible] hotbar.0 with stone_sword{Enchantments:[{id:"minecraft:sharpness",lvl:1s}]}
item replace entity @s[team=switch.temp.visible] hotbar.1 with bow
item replace entity @s[team=switch.temp.visible] hotbar.2 with stone_axe{AttributeModifiers:[{AttributeName:"minecraft:generic.attack_damage",Name:"minecraft:generic.attack_damage",Slot:"mainhand",Amount:4,Operation:0,UUID:[I;2012000,-2012000,-2012000,2012000]}]}
item replace entity @s[team=switch.temp.visible] hotbar.3 with oak_planks 64
item replace entity @s[team=switch.temp.visible] hotbar.7 with water_bucket
item replace entity @s[team=switch.temp.visible] hotbar.8 with golden_apple 4
item replace entity @s[team=switch.temp.visible] inventory.0 with arrow 16

item replace entity @s[team=switch.temp.spectre] hotbar.0 with water_bucket
item replace entity @s[team=switch.temp.spectre] hotbar.1 with stone_sword{Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:sharpness",lvl:3s},{id:"minecraft:fire_aspect",lvl:1s}]}
item replace entity @s[team=switch.temp.spectre] hotbar.3 with bow{Enchantments:[{id:"minecraft:punch",lvl:1s}]}
item replace entity @s[team=switch.temp.spectre] hotbar.7 with golden_apple 8
item replace entity @s[team=switch.temp.spectre] hotbar.8 with oak_planks 64
item replace entity @s[team=switch.temp.spectre] inventory.0 with arrow 48
item replace entity @s[team=switch.temp.spectre] inventory.1 with stone_axe{AttributeModifiers:[{AttributeName:"minecraft:generic.attack_damage",Name:"minecraft:generic.attack_damage",Slot:"mainhand",Amount:4,Operation:0,UUID:[I;2012000,-2012000,-2012000,2012000]}]}
effect give @s[team=switch.temp.spectre] invisibility infinite 255 true
effect give @s[team=switch.temp.spectre] resistance infinite 0 true
effect give @s[team=switch.temp.spectre] resistance 30 1 true
effect give @s[team=switch.temp.spectre] speed infinite 0 true

item replace entity @s inventory.25 with flint_and_steel
item replace entity @s inventory.26 with tnt 3

effect give @s resistance 10 255 true
attribute @s generic.attack_speed base set 1024

#pommes en plus pour les spectres en cas de spectror game
execute if score #SPECTROR_GAME switch.data matches 1 run give @s[team=switch.temp.spectre] golden_apple 3

