
setblock 0 0 0 air
setblock 0 0 0 yellow_shulker_box

execute store result score #random switch.data run random value 0..3
execute if score #random switch.data matches 0 run loot insert 0 0 0 loot stardust:i/original_stardust_sword
execute if score #random switch.data matches 1 run loot insert 0 0 0 loot stardust:i/legendarium_sword
execute if score #random switch.data matches 2 run loot insert 0 0 0 loot stardust:i/solarium_sword
execute if score #random switch.data matches 3 run loot insert 0 0 0 loot stardust:i/darkium_sword

execute store result score #random switch.data run random value 0..2
execute if score #random switch.data matches 0 run loot insert 0 0 0 loot stardust:i/stardust_bow
execute if score #random switch.data matches 1 run loot insert 0 0 0 loot stardust:i/awakened_stardust_bow
execute if score #random switch.data matches 2 run loot insert 0 0 0 loot stardust:i/ultimate_bow

data remove block 0 0 0 Items[0].components."minecraft:custom_data".stardust
data modify block 0 0 0 Items[0].components."minecraft:enchantments" set value {"levels":{"minecraft:knockback":3}}
data modify block 0 0 0 Items[0].components."minecraft:unbreakable" set value {}
data remove block 0 0 0 Items[1].components."minecraft:custom_data".stardust
data modify block 0 0 0 Items[1].components."minecraft:enchantments" set value {"levels":{"minecraft:infinity":1,"minecraft:punch":2}}
data modify block 0 0 0 Items[1].components."minecraft:unbreakable" set value {}

item replace entity @s hotbar.0 from block 0 0 0 container.0
item replace entity @s hotbar.1 from block 0 0 0 container.1
item replace entity @s hotbar.2 with arrow
item replace entity @s hotbar.8 with ender_pearl 3

# Give depending on the upgrades
execute if score @s switch.pitchout.boots matches 1 run item replace entity @s armor.feet with leather_boots[damage=45]
execute if score @s switch.pitchout.boots matches 2 run item replace entity @s armor.feet with leather_boots[damage=35]
execute if score @s switch.pitchout.boots matches 3 run item replace entity @s armor.feet with leather_boots[damage=25]
execute if score @s switch.pitchout.boots matches 4 run item replace entity @s armor.feet with leather_boots[damage=15]
execute if score @s switch.pitchout.boots matches 5 run item replace entity @s armor.feet with leather_boots
execute if score @s switch.pitchout.ender_pearl matches 1 run item replace entity @s hotbar.8 with ender_pearl 4
execute if score @s switch.pitchout.ender_pearl matches 2 run item replace entity @s hotbar.8 with ender_pearl 5

setblock 0 0 0 air

