
# Team selection
scoreboard players add #next_role switch.data 1
execute if score #next_role switch.data matches 1 run team join switch.temp.red @s
execute if score #next_role switch.data matches 2 run team join switch.temp.blue @s
execute if score #next_role switch.data matches 2 run scoreboard players set #next_role switch.data 0

# Teleport to team spawn
execute if data storage switch:main {map:"sheepwars_dirigeables"} if entity @s[team=switch.temp.red] run function switch:maps/survival/sheepwars_dirigeables/tp_red_player
execute if data storage switch:main {map:"sheepwars_dirigeables"} if entity @s[team=switch.temp.blue] run function switch:maps/survival/sheepwars_dirigeables/tp_blue_player
execute if data storage switch:main {map:"survival_boat"} if entity @s[team=switch.temp.red] run function switch:maps/survival/survival_boat/tp_red_player
execute if data storage switch:main {map:"survival_boat"} if entity @s[team=switch.temp.blue] run function switch:maps/survival/survival_boat/tp_blue_player
execute if data storage switch:main {map:"sheepwars_bonbons"} if entity @s[team=switch.temp.blue] run function switch:maps/survival/sheepwars_bonbons/tp_blue_player
execute if data storage switch:main {map:"sheepwars_bonbons"} if entity @s[team=switch.temp.red] run function switch:maps/survival/sheepwars_bonbons/tp_red_player

# Starter kit
clear @s
item replace entity @s weapon.offhand with warped_fungus_on_a_stick{CustomModelData:2010003,Unbreakable:1b,display:{Name:'{"text":"Détection de click","color":"dark_purple","italic":false}',Lore:['{"text":"Ne pas touger","color":"light_purple","italic":false}']}}
execute if entity @s[team=switch.temp.red] run item replace entity @s armor.chest with leather_chestplate{display:{color:16711680},Unbreakable:1b}
execute if entity @s[team=switch.temp.red] run item replace entity @s armor.legs with leather_leggings{display:{color:16711680},Unbreakable:1b}
execute if entity @s[team=switch.temp.red] run item replace entity @s armor.feet with leather_boots{display:{color:16711680},Unbreakable:1b}
execute if entity @s[team=switch.temp.blue] run item replace entity @s armor.chest with leather_chestplate{display:{color:255},Unbreakable:1b}
execute if entity @s[team=switch.temp.blue] run item replace entity @s armor.legs with leather_leggings{display:{color:255},Unbreakable:1b}
execute if entity @s[team=switch.temp.blue] run item replace entity @s armor.feet with leather_boots{display:{color:255},Unbreakable:1b}
item replace entity @s hotbar.0 with stone_sword{CanDestroy:["#realistic_explosion:all"],Unbreakable:1b,HideFlags:8}
item replace entity @s hotbar.1 with bow{CanDestroy:["#realistic_explosion:all"],Enchantments:[{id:"minecraft:infinity",lvl:1s}],Unbreakable:1b,HideFlags:8}
item replace entity @s inventory.0 with arrow{HideFlags:8}
attribute @s generic.armor base set 3.0

## Shop things
# Kit More Health
execute if score @s switch.sheepwars.choosen_kit matches 1 run item replace entity @s armor.chest with chainmail_chestplate{Unbreakable:1b,HideFlags:8,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;20231201,1,1,1],Slot:"chest"}]}
execute if score @s switch.sheepwars.choosen_kit matches 1 unless score @s switch.sheepwars.kit_health matches 1.. run attribute @s generic.max_health base set 22
execute if score @s switch.sheepwars.choosen_kit matches 1 if score @s switch.sheepwars.kit_health matches 1 run attribute @s generic.max_health base set 24
execute if score @s switch.sheepwars.choosen_kit matches 1 if score @s switch.sheepwars.kit_health matches 2 run attribute @s generic.max_health base set 26
execute if score @s switch.sheepwars.choosen_kit matches 1 if score @s switch.sheepwars.kit_health matches 3 run attribute @s generic.max_health base set 28
execute if score @s switch.sheepwars.choosen_kit matches 1 if score @s switch.sheepwars.kit_health matches 4 run attribute @s generic.max_health base set 30
# Kit Better Bow
execute if score @s switch.sheepwars.choosen_kit matches 2 run item replace entity @s hotbar.1 with bow{CanDestroy:["#realistic_explosion:all"],Enchantments:[{id:"minecraft:infinity",lvl:1s}],Unbreakable:1b,HideFlags:8,CustomModelData:2013149}
# Kit Better Sword
execute if score @s switch.sheepwars.choosen_kit matches 3 unless score @s switch.sheepwars.kit_sword matches 1.. run item replace entity @s hotbar.0 with stone_sword{CanDestroy:["#realistic_explosion:all"],Unbreakable:1b,HideFlags:8,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0.42,Operation:0,UUID:[I;20231201,3,1,1],Slot:"mainhand"}]}
execute if score @s switch.sheepwars.choosen_kit matches 3 if score @s switch.sheepwars.kit_sword matches 1 run item replace entity @s hotbar.0 with stone_sword{CanDestroy:["#realistic_explosion:all"],Unbreakable:1b,HideFlags:8,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0.44,Operation:0,UUID:[I;20231201,3,1,1],Slot:"mainhand"}]}
execute if score @s switch.sheepwars.choosen_kit matches 3 if score @s switch.sheepwars.kit_sword matches 2 run item replace entity @s hotbar.0 with stone_sword{CanDestroy:["#realistic_explosion:all"],Unbreakable:1b,HideFlags:8,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0.46,Operation:0,UUID:[I;20231201,3,1,1],Slot:"mainhand"}]}
execute if score @s switch.sheepwars.choosen_kit matches 3 if score @s switch.sheepwars.kit_sword matches 3 run item replace entity @s hotbar.0 with stone_sword{CanDestroy:["#realistic_explosion:all"],Unbreakable:1b,HideFlags:8,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0.48,Operation:0,UUID:[I;20231201,3,1,1],Slot:"mainhand"}]}
execute if score @s switch.sheepwars.choosen_kit matches 3 if score @s switch.sheepwars.kit_sword matches 4 run item replace entity @s hotbar.0 with stone_sword{CanDestroy:["#realistic_explosion:all"],Unbreakable:1b,HideFlags:8}
# Kit Builder
execute if score @s switch.sheepwars.choosen_kit matches 5 unless score @s switch.sheepwars.kit_builder matches 1.. run item replace entity @s hotbar.2 with bricks{CanDestroy:["#realistic_explosion:all"]} 5
execute if score @s switch.sheepwars.choosen_kit matches 5 unless score @s switch.sheepwars.kit_builder matches 1.. run item replace entity @s hotbar.3 with tnt{CanDestroy:["#realistic_explosion:all"]} 2
execute if score @s switch.sheepwars.choosen_kit matches 5 if score @s switch.sheepwars.kit_builder matches 1 run item replace entity @s hotbar.2 with bricks{CanDestroy:["#realistic_explosion:all"]} 6
execute if score @s switch.sheepwars.choosen_kit matches 5 if score @s switch.sheepwars.kit_builder matches 1 run item replace entity @s hotbar.3 with tnt{CanDestroy:["#realistic_explosion:all"]} 2
execute if score @s switch.sheepwars.choosen_kit matches 5 if score @s switch.sheepwars.kit_builder matches 2 run item replace entity @s hotbar.2 with bricks{CanDestroy:["#realistic_explosion:all"]} 7
execute if score @s switch.sheepwars.choosen_kit matches 5 if score @s switch.sheepwars.kit_builder matches 2 run item replace entity @s hotbar.3 with tnt{CanDestroy:["#realistic_explosion:all"]} 3
execute if score @s switch.sheepwars.choosen_kit matches 5 if score @s switch.sheepwars.kit_builder matches 3 run item replace entity @s hotbar.2 with bricks{CanDestroy:["#realistic_explosion:all"]} 9
execute if score @s switch.sheepwars.choosen_kit matches 5 if score @s switch.sheepwars.kit_builder matches 3 run item replace entity @s hotbar.3 with tnt{CanDestroy:["#realistic_explosion:all"]} 3
execute if score @s switch.sheepwars.choosen_kit matches 5 if score @s switch.sheepwars.kit_builder matches 4 run item replace entity @s hotbar.2 with bricks{CanDestroy:["#realistic_explosion:all"]} 10
execute if score @s switch.sheepwars.choosen_kit matches 5 if score @s switch.sheepwars.kit_builder matches 4 run item replace entity @s hotbar.3 with tnt{CanDestroy:["#realistic_explosion:all"]} 4
# Kit Mobility
execute if score @s switch.sheepwars.choosen_kit matches 6 unless score @s switch.sheepwars.kit_mobility matches 1.. run item replace entity @s[team=switch.temp.red] armor.feet with leather_boots{display:{color:16711680},Unbreakable:1b,HideFlags:8,AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.010,Operation:0,UUID:[I;20231201,6,1,1],Slot:"feet"}],Enchantments:[{id:"minecraft:feather_falling",lvl:1s}]}
execute if score @s switch.sheepwars.choosen_kit matches 6 unless score @s switch.sheepwars.kit_mobility matches 1.. run item replace entity @s[team=switch.temp.blue] armor.feet with leather_boots{display:{color:255},Unbreakable:1b,HideFlags:8,AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.010,Operation:0,UUID:[I;20231201,6,1,1],Slot:"feet"}],Enchantments:[{id:"minecraft:feather_falling",lvl:1s}]}
execute if score @s switch.sheepwars.choosen_kit matches 6 if score @s switch.sheepwars.kit_mobility matches 1 run item replace entity @s[team=switch.temp.red] armor.feet with leather_boots{display:{color:16711680},Unbreakable:1b,HideFlags:8,AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.015,Operation:0,UUID:[I;20231201,6,1,1],Slot:"feet"}],Enchantments:[{id:"minecraft:feather_falling",lvl:1s}]}
execute if score @s switch.sheepwars.choosen_kit matches 6 if score @s switch.sheepwars.kit_mobility matches 1 run item replace entity @s[team=switch.temp.blue] armor.feet with leather_boots{display:{color:255},Unbreakable:1b,HideFlags:8,AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.015,Operation:0,UUID:[I;20231201,6,1,1],Slot:"feet"}],Enchantments:[{id:"minecraft:feather_falling",lvl:1s}]}
execute if score @s switch.sheepwars.choosen_kit matches 6 if score @s switch.sheepwars.kit_mobility matches 2 run item replace entity @s[team=switch.temp.red] armor.feet with leather_boots{display:{color:16711680},Unbreakable:1b,HideFlags:8,AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.020,Operation:0,UUID:[I;20231201,6,1,1],Slot:"feet"}],Enchantments:[{id:"minecraft:feather_falling",lvl:2s}]}
execute if score @s switch.sheepwars.choosen_kit matches 6 if score @s switch.sheepwars.kit_mobility matches 2 run item replace entity @s[team=switch.temp.blue] armor.feet with leather_boots{display:{color:255},Unbreakable:1b,HideFlags:8,AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.020,Operation:0,UUID:[I;20231201,6,1,1],Slot:"feet"}],Enchantments:[{id:"minecraft:feather_falling",lvl:2s}]}
execute if score @s switch.sheepwars.choosen_kit matches 6 if score @s switch.sheepwars.kit_mobility matches 3 run item replace entity @s[team=switch.temp.red] armor.feet with leather_boots{display:{color:16711680},Unbreakable:1b,HideFlags:8,AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.025,Operation:0,UUID:[I;20231201,6,1,1],Slot:"feet"}],Enchantments:[{id:"minecraft:feather_falling",lvl:2s}]}
execute if score @s switch.sheepwars.choosen_kit matches 6 if score @s switch.sheepwars.kit_mobility matches 3 run item replace entity @s[team=switch.temp.blue] armor.feet with leather_boots{display:{color:255},Unbreakable:1b,HideFlags:8,AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.025,Operation:0,UUID:[I;20231201,6,1,1],Slot:"feet"}],Enchantments:[{id:"minecraft:feather_falling",lvl:2s}]}
execute if score @s switch.sheepwars.choosen_kit matches 6 if score @s switch.sheepwars.kit_mobility matches 4 run item replace entity @s[team=switch.temp.red] armor.feet with leather_boots{display:{color:16711680},Unbreakable:1b,HideFlags:8,AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.030,Operation:0,UUID:[I;20231201,6,1,1],Slot:"feet"}],Enchantments:[{id:"minecraft:feather_falling",lvl:3s}]}
execute if score @s switch.sheepwars.choosen_kit matches 6 if score @s switch.sheepwars.kit_mobility matches 4 run item replace entity @s[team=switch.temp.blue] armor.feet with leather_boots{display:{color:255},Unbreakable:1b,HideFlags:8,AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.030,Operation:0,UUID:[I;20231201,6,1,1],Slot:"feet"}],Enchantments:[{id:"minecraft:feather_falling",lvl:3s}]}
execute if score @s switch.sheepwars.choosen_kit matches 6 if score @s switch.sheepwars.kit_mobility matches 1..2 run effect give @s jump_boost infinite 0 true
execute if score @s switch.sheepwars.choosen_kit matches 6 if score @s switch.sheepwars.kit_mobility matches 3.. run effect give @s jump_boost infinite 1 true

## Not an Item based kit
# Kit Better Bow (choosen_kit = 2)
# Kit More Sheep (choosen_kit = 4)
# Kit Armored Sheep (choosen_kit = 7)

# Set attack speed
attribute @s generic.attack_speed base set 1024

