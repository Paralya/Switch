
tag @s add switch.temp

#Starter kit
item replace entity @s armor.head with iron_helmet
item replace entity @s armor.chest with diamond_chestplate
item replace entity @s armor.legs with iron_leggings
item replace entity @s armor.feet with diamond_boots
item replace entity @s hotbar.0 with diamond_sword{Enchantments:[{id:"minecraft:sharpness",lvl:3s}]}
item replace entity @s hotbar.1 with bow{Enchantments:[{id:"minecraft:power",lvl:1s}]}
item replace entity @s hotbar.2 with golden_apple 5
item replace entity @s hotbar.3 with water_bucket
item replace entity @s hotbar.4 with arrow 32

#Random start bonus items
execute if predicate switch:chance/0.1 run give @s ender_pearl
execute if predicate switch:chance/0.1 run give @s golden_sword{Enchantments:[{id:"minecraft:knockback",lvl:10s}],Damage:31}
execute if predicate switch:chance/0.1 run give @s golden_apple 2
execute if predicate switch:chance/0.1 run give @s diamond 4
execute if predicate switch:chance/0.1 run give @s trident
execute if predicate switch:chance/0.1 run give @s fishing_rod
execute if predicate switch:chance/0.1 run give @s creeper_spawn_egg 4
execute if predicate switch:chance/0.1 run give @s zombie_spawn_egg 5
execute if predicate switch:chance/0.1 run give @s chorus_fruit 2

attribute @s generic.attack_speed base set 1024
xp set @s 100 levels
xp set @s 0 points

tag @s remove switch.temp

