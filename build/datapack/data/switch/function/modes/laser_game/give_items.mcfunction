
#> switch:modes/laser_game/give_items
#
# @within	switch:modes/laser_game/tick
#

## TO ADVANCEMENT

clear @s[nbt=!{Inventory:[{Slot:0b}]}] warped_fungus_on_a_stick
clear @s[nbt=!{Inventory:[{Slot:102b}]}] leather_chestplate
clear @s[nbt=!{Inventory:[{Slot:103b}]}] leather_helmet

item replace entity @s[team=switch.laser_game.blue] hotbar.0 with warped_fungus_on_a_stick[item_model="switch:stardust_sniper",unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},item_name={"text":"Laser-Gun","italic":false},lore=[{"text":"[One bullet per second]","color":"gray","italic":false}]]
item replace entity @s[team=switch.laser_game.red] hotbar.0 with warped_fungus_on_a_stick[item_model="switch:awakened_stardust_sniper",unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},item_name={"text":"Laser-Gun","italic":false},lore=[{"text":"[One bullet per second]","color":"gray","italic":false}]]

item replace entity @s[team=switch.laser_game.blue,tag=!global.ignore,nbt=!{Inventory:[{Slot:102b,components:{"minecraft:dyed_color":262399}}]}] armor.chest with leather_chestplate[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=262399]
item replace entity @s[team=switch.laser_game.red,tag=!global.ignore,nbt=!{Inventory:[{Slot:102b,components:{"minecraft:dyed_color":16711680}}]}] armor.chest with leather_chestplate[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=16711680]
item replace entity @s[team=switch.laser_game.blue,tag=!global.ignore,nbt=!{Inventory:[{Slot:103b,components:{"minecraft:dyed_color":262399}}]}] armor.head with leather_helmet[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=262399]
item replace entity @s[team=switch.laser_game.red,tag=!global.ignore,nbt=!{Inventory:[{Slot:103b,components:{"minecraft:dyed_color":16711680}}]}] armor.head with leather_helmet[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=16711680]

item replace entity @s[team=switch.laser_game.blue,tag=global.ignore,nbt=!{Inventory:[{Slot:102b,components:{"minecraft:dyed_color":65617}}]}] armor.chest with leather_chestplate[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=65617]
item replace entity @s[team=switch.laser_game.red,tag=global.ignore,nbt=!{Inventory:[{Slot:102b,components:{"minecraft:dyed_color":4128768}}]}] armor.chest with leather_chestplate[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=4128768]
item replace entity @s[team=switch.laser_game.blue,tag=global.ignore,nbt=!{Inventory:[{Slot:103b,components:{"minecraft:dyed_color":65617}}]}] armor.head with leather_helmet[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=65617]
item replace entity @s[team=switch.laser_game.red,tag=global.ignore,nbt=!{Inventory:[{Slot:103b,components:{"minecraft:dyed_color":4128768}}]}] armor.head with leather_helmet[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=4128768]

