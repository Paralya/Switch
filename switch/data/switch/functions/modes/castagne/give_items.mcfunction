
# Starter kit
scoreboard players set #armor switch.data 0
scoreboard players set #sword switch.data 0
execute if predicate switch:chance/0.5 run scoreboard players set #armor switch.data 1
execute if predicate switch:chance/0.5 run scoreboard players set #sword switch.data 1
execute if score #armor switch.data matches 0 run item replace entity @s armor.head with iron_helmet{Enchantments:[{id:"minecraft:protection",lvl:2s}]}
execute if score #armor switch.data matches 0 run item replace entity @s armor.chest with diamond_chestplate
execute if score #armor switch.data matches 0 run item replace entity @s armor.legs with iron_leggings{Enchantments:[{id:"minecraft:protection",lvl:2s}]}
execute if score #armor switch.data matches 0 run item replace entity @s armor.feet with diamond_boots
execute if score #armor switch.data matches 1 run item replace entity @s armor.head with diamond_helmet
execute if score #armor switch.data matches 1 run item replace entity @s armor.chest with iron_chestplate{Enchantments:[{id:"minecraft:protection",lvl:1s}]}
execute if score #armor switch.data matches 1 run item replace entity @s armor.legs with diamond_leggings
execute if score #armor switch.data matches 1 run item replace entity @s armor.feet with iron_boots{Enchantments:[{id:"minecraft:protection",lvl:2s}]}
execute if score #sword switch.data matches 1 run item replace entity @s hotbar.0 with diamond_sword{Enchantments:[{id:"minecraft:sharpness",lvl:1s},{id:"minecraft:knockback",lvl:1s}]}
execute if score #sword switch.data matches 0 run item replace entity @s hotbar.0 with iron_sword{Enchantments:[{id:"minecraft:sharpness",lvl:2s},{id:"minecraft:knockback",lvl:1s}]}
item replace entity @s hotbar.1 with bow{Enchantments:[{id:"minecraft:power",lvl:1s}]}
item replace entity @s hotbar.7 with arrow 28
item replace entity @s hotbar.8 with golden_apple 12

attribute @s generic.max_health base set 40.0
attribute @s generic.attack_speed base set 1024
xp set @s 0 levels
xp set @s 0 points

