
item replace entity @s[team=switch.temp.spectre] hotbar.0 with water_bucket
item replace entity @s[team=switch.temp.spectre] hotbar.1 with stone_sword{Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:sharpness",lvl:3s},{id:"minecraft:fire_aspect",lvl:1s}]}
item replace entity @s[team=switch.temp.spectre] hotbar.3 with bow{Enchantments:[{id:"minecraft:punch",lvl:1s}]}
execute unless score @s switch.spectres_game.sp_apples matches 1.. run item replace entity @s[team=switch.temp.spectre] hotbar.7 with golden_apple 8
execute if score @s switch.spectres_game.sp_apples matches 1 run item replace entity @s[team=switch.temp.spectre] hotbar.7 with golden_apple 9
execute if score @s switch.spectres_game.sp_apples matches 2 run item replace entity @s[team=switch.temp.spectre] hotbar.7 with golden_apple 10
execute if score @s switch.spectres_game.sp_apples matches 3 run item replace entity @s[team=switch.temp.spectre] hotbar.7 with golden_apple 11
item replace entity @s[team=switch.temp.spectre] hotbar.8 with oak_planks 64
execute unless score @s switch.spectres_game.sp_arrows matches 1.. run item replace entity @s[team=switch.temp.spectre] inventory.0 with arrow 24
execute if score @s switch.spectres_game.sp_arrows matches 1 run item replace entity @s[team=switch.temp.spectre] inventory.0 with arrow 28
execute if score @s switch.spectres_game.sp_arrows matches 2 run item replace entity @s[team=switch.temp.spectre] inventory.0 with arrow 32
execute if score @s switch.spectres_game.sp_arrows matches 3 run item replace entity @s[team=switch.temp.spectre] inventory.0 with arrow 36
execute if score @s switch.spectres_game.sp_arrows matches 4 run item replace entity @s[team=switch.temp.spectre] inventory.0 with arrow 40
item replace entity @s[team=switch.temp.spectre] inventory.1 with stone_axe{AttributeModifiers:[{AttributeName:"minecraft:generic.attack_damage",Name:"minecraft:generic.attack_damage",Slot:"mainhand",Amount:4,Operation:0,UUID:[I;2012000,-2012000,-2012000,2012000]}]}
effect give @s[team=switch.temp.spectre] invisibility infinite 255 true
effect give @s[team=switch.temp.spectre] resistance infinite 0 true
effect give @s[team=switch.temp.spectre] resistance 30 1 true
effect give @s[team=switch.temp.spectre] speed infinite 0 true

item replace entity @s[team=switch.temp.visible] armor.head with chainmail_helmet{Enchantments:[{id:"minecraft:protection",lvl:1s}]}
item replace entity @s[team=switch.temp.visible] armor.chest with iron_chestplate{Enchantments:[{id:"minecraft:fire_protection",lvl:1s}]}
item replace entity @s[team=switch.temp.visible] armor.legs with iron_leggings{Enchantments:[{id:"minecraft:protection",lvl:1s}]}
item replace entity @s[team=switch.temp.visible] armor.feet with diamond_boots{Enchantments:[{id:"minecraft:fire_protection",lvl:1s}]}
item replace entity @s[team=switch.temp.visible] hotbar.0 with stone_sword{Enchantments:[{id:"minecraft:sharpness",lvl:1s}]}
item replace entity @s[team=switch.temp.visible] hotbar.1 with bow
item replace entity @s[team=switch.temp.visible] hotbar.2 with stone_axe{AttributeModifiers:[{AttributeName:"minecraft:generic.attack_damage",Name:"minecraft:generic.attack_damage",Slot:"mainhand",Amount:4,Operation:0,UUID:[I;2012000,-2012000,-2012000,2012000]}]}
item replace entity @s[team=switch.temp.visible] hotbar.3 with oak_planks 64
item replace entity @s[team=switch.temp.visible] hotbar.7 with water_bucket
execute unless score @s switch.spectres_game.vi_apples matches 1.. run item replace entity @s[team=switch.temp.visible] hotbar.8 with golden_apple 5
execute if score @s switch.spectres_game.vi_apples matches 1 run item replace entity @s[team=switch.temp.visible] hotbar.8 with golden_apple 6
execute if score @s switch.spectres_game.vi_apples matches 2 run item replace entity @s[team=switch.temp.visible] hotbar.8 with golden_apple 7
execute if score @s switch.spectres_game.vi_apples matches 3 run item replace entity @s[team=switch.temp.visible] hotbar.8 with golden_apple 8
execute unless score @s switch.spectres_game.vi_arrows matches 1.. run item replace entity @s[team=switch.temp.visible] inventory.0 with arrow 16
execute if score @s switch.spectres_game.vi_arrows matches 1 run item replace entity @s[team=switch.temp.visible] inventory.0 with arrow 18
execute if score @s switch.spectres_game.vi_arrows matches 2 run item replace entity @s[team=switch.temp.visible] inventory.0 with arrow 20
execute if score @s switch.spectres_game.vi_arrows matches 3 run item replace entity @s[team=switch.temp.visible] inventory.0 with arrow 22
execute if score @s switch.spectres_game.vi_arrows matches 4 run item replace entity @s[team=switch.temp.visible] inventory.0 with arrow 24

item replace entity @s inventory.25 with flint_and_steel
item replace entity @s inventory.26 with tnt 3

effect give @s resistance 10 255 true
attribute @s generic.attack_speed base set 1024

# Pommes en plus pour les spectres en cas de spectror game
execute if score #SPECTROR_GAME switch.data matches 1 run give @s[scores={switch.temp.spectror=1}] golden_apple 2

# Diamond pickaxe
execute if score #TASKS_GAME switch.data matches 1 run give @s diamond_pickaxe 

