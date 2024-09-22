
function switch:utils/reset_attributes
attribute @s generic.attack_speed base set 1024

scoreboard players set #armor switch.data 0
scoreboard players set #sword switch.data 0
execute if predicate switch:chance/0.5 run scoreboard players set #armor switch.data 1
execute if predicate switch:chance/0.5 run scoreboard players set #sword switch.data 1
execute if score #armor switch.data matches 0 run item replace entity @s armor.head with iron_helmet[enchantments={protection:2}]
execute if score #armor switch.data matches 0 run item replace entity @s armor.chest with diamond_chestplate
execute if score #armor switch.data matches 0 run item replace entity @s armor.legs with iron_leggings[enchantments={protection:2}]
execute if score #armor switch.data matches 0 run item replace entity @s armor.feet with diamond_boots
execute if score #armor switch.data matches 1 run item replace entity @s armor.head with diamond_helmet
execute if score #armor switch.data matches 1 run item replace entity @s armor.chest with iron_chestplate[enchantments={protection:1}]
execute if score #armor switch.data matches 1 run item replace entity @s armor.legs with diamond_leggings
execute if score #armor switch.data matches 1 run item replace entity @s armor.feet with iron_boots[enchantments={protection:2}]
execute if score #sword switch.data matches 1 run item replace entity @s hotbar.0 with diamond_sword[enchantments={sharpness:1}]
execute if score #sword switch.data matches 0 run item replace entity @s hotbar.0 with iron_sword[enchantments={sharpness:2}]
item replace entity @s hotbar.1 with bow[enchantments={power:1}]
item replace entity @s[scores={switch.temp.role=1}] hotbar.1 with bow[enchantments={power:2},attribute_modifiers=[{type:"generic.movement_speed",slot:"mainhand",id:"switch.movement_speed",amount:0.16,operation:"add_multiplied_total"},{type:"generic.movement_speed",slot:"offhand",id:"switch.movement_speed",amount:0.16,operation:"add_multiplied_total"}]]
item replace entity @s hotbar.3 with stone_axe[attribute_modifiers=[{type:"minecraft:generic.attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:4,operation:"add_value"}]]
item replace entity @s hotbar.4 with apple 16
item replace entity @s hotbar.8 with golden_apple 6
item replace entity @s hotbar.6 with arrow 28
item replace entity @s hotbar.7 with water_bucket
loot give @s loot switch:traitors_game/all_starter
give @s oak_planks 100
give @s anvil

# Random items (0 or 1 or 2)
execute if predicate switch:chance/0.5 run function switch:modes/traitors_game/random_items
execute if predicate switch:chance/0.5 run function switch:modes/traitors_game/random_items

