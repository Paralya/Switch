

scoreboard players set #next_role switch.data 1
function switch:modes/spectres_game/roles/

item replace entity @s armor.head with diamond_helmet{Enchantments:[{id:"minecraft:protection",lvl:3s}]}
item replace entity @s armor.chest with chainmail_chestplate{Enchantments:[{id:"minecraft:fire_protection",lvl:2s}]}
item replace entity @s armor.legs with chainmail_leggings{Enchantments:[{id:"minecraft:protection",lvl:3s}]}
item replace entity @s armor.feet with chainmail_boots{Enchantments:[{id:"minecraft:fire_protection",lvl:2s}]}
item replace entity @s hotbar.0 with stone_sword{Enchantments:[{id:"minecraft:sharpness",lvl:1s}]}
item replace entity @s hotbar.1 with bow
item replace entity @s hotbar.2 with stone_axe{AttributeModifiers:[{AttributeName:"minecraft:generic.attack_damage",Name:"minecraft:generic.attack_damage",Slot:"mainhand",Amount:4,Operation:0,UUID:[I;2012000,-2012000,-2012000,2012000]}]}
item replace entity @s hotbar.3 with oak_planks 64
item replace entity @s hotbar.7 with water_bucket
item replace entity @s hotbar.8 with golden_apple 3
item replace entity @s inventory.0 with arrow 12
give @s iron_pickaxe{Enchantments:[{id:"minecraft:efficiency",lvl:2s}]}

scoreboard players set @s switch.alive 1
function switch:maps/spread_one_player
gamemode survival @s
