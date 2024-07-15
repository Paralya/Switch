
item replace entity @s armor.head with leather_helmet{Enchantments:[{id:"minecraft:projectile_protection",lvl:2s}]}
item replace entity @s armor.chest with leather_chestplate{Enchantments:[{id:"minecraft:projectile_protection",lvl:2s}]}
item replace entity @s armor.legs with leather_leggings{Enchantments:[{id:"minecraft:projectile_protection",lvl:2s}]}
item replace entity @s armor.feet with leather_boots{Enchantments:[{id:"minecraft:projectile_protection",lvl:2s}]}
item replace entity @s hotbar.0 with wooden_sword{Enchantments:[{id:"minecraft:sharpness",lvl:1s},{id:"minecraft:knockback",lvl:1s}]}
item replace entity @s hotbar.1 with bow
item replace entity @s hotbar.2 with water_bucket
item replace entity @s hotbar.3 with iron_pickaxe{Enchantments:[{id:"minecraft:efficiency",lvl:1s}]}
item replace entity @s hotbar.4 with iron_axe{Enchantments:[{id:"minecraft:efficiency",lvl:1s}],AttributeModifiers:[{AttributeName:"minecraft:generic.attack_damage",Name:"minecraft:generic.attack_damage",Slot:"mainhand",Amount:2,Operation:0,UUID:[I;2012000,-2012000,-2012000,2012000]}]}
item replace entity @s hotbar.6 with arrow 8
item replace entity @s hotbar.7 with oak_planks 64
item replace entity @s hotbar.8 with golden_apple 12
item replace entity @s inventory.25 with tnt 4
item replace entity @s inventory.26 with flint_and_steel

scoreboard players add #initial_count switch.data 1
data modify storage switch:temp temp set value {id:0,hurt:[]}
execute store result storage switch:temp temp.id int 1 run scoreboard players get @s switch.id
data modify storage switch:temp castagne append from storage switch:temp temp
data remove storage switch:temp temp

