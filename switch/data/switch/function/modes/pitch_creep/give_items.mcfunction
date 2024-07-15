
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
data modify block 0 0 0 Items[1].components."minecraft:enchantments" set value {"levels":{"minecraft:punch":3}}
data modify block 0 0 0 Items[1].components."minecraft:unbreakable" set value {}

item replace entity @s hotbar.0 from block 0 0 0 container.0
item replace entity @s hotbar.1 from block 0 0 0 container.1
item replace entity @s hotbar.2 with arrow 64

setblock 0 0 0 air

