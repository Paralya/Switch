
#> switch:player/setup_lobby_inventory
#
# @executed	as the player & at current position
#
# @within	switch:player/restore_lobby_gui
#			switch:player/tick_detach
#

tag @s add switch.lobby_setup

item replace entity @s[advancements={switch:visible/jump_dripstone=false}] inventory.3 with dripstone_block[item_name={"text":"Dripstone Jump","color":"#FFA600"},lore=[{"text":"by AirDox","color":"#AEBBD0","italic":false}],custom_data={"switch":{"jump":true,"jump_dripstone":true}},tooltip_style="failure"]
item replace entity @s[advancements={switch:visible/jump_dripstone=true}] inventory.3 with dripstone_block[item_name={"text":"Dripstone Jump","color":"#FFA600"},lore=[{"text":"by AirDox","color":"#AEBBD0","italic":false}],custom_data={"switch":{"jump":true,"jump_dripstone":true}},tooltip_style="success"]

item replace entity @s[advancements={switch:visible/jump_pink=false}] inventory.4 with pink_concrete[item_name={"text":"Pink Jump","color":"#FF8FD8"},lore=[{"text":"by OfChara","color":"#AEBBD0","italic":false}],custom_data={"switch":{"jump":true,"jump_pink":true}},tooltip_style="failure"]
item replace entity @s[advancements={switch:visible/jump_pink=true}] inventory.4 with pink_concrete[item_name={"text":"Pink Jump","color":"#FF8FD8"},lore=[{"text":"by OfChara","color":"#AEBBD0","italic":false}],custom_data={"switch":{"jump":true,"jump_pink":true}},tooltip_style="success"]

item replace entity @s[advancements={switch:visible/jump_bricks=false}] inventory.5 with bricks[item_name={"text":"Bricks Jump","color":"#BC4A3C"},lore=[{"text":"by Thitanas","color":"#AEBBD0","italic":false}],custom_data={"switch":{"jump":true,"jump_bricks":true}},tooltip_style="failure"]
item replace entity @s[advancements={switch:visible/jump_bricks=true}] inventory.5 with bricks[item_name={"text":"Bricks Jump","color":"#BC4A3C"},lore=[{"text":"by Thitanas","color":"#AEBBD0","italic":false}],custom_data={"switch":{"jump":true,"jump_bricks":true}},tooltip_style="success"]

item replace entity @s[advancements={switch:visible/jump_green=false}] inventory.10 with lime_concrete[item_name={"text":"Green Jump","color":"#2EFF8B"},lore=[{"text":"by Stoupy","color":"#AEBBD0","italic":false}],custom_data={"switch":{"jump":true,"jump_green":true}},tooltip_style="failure"]
item replace entity @s[advancements={switch:visible/jump_green=true}] inventory.10 with lime_concrete[item_name={"text":"Green Jump","color":"#2EFF8B"},lore=[{"text":"by Stoupy","color":"#AEBBD0","italic":false}],custom_data={"switch":{"jump":true,"jump_green":true}},tooltip_style="success"]

item replace entity @s[advancements={switch:visible/jump_white=false}] inventory.11 with white_concrete[item_name={"text":"White Jump","color":"#E4ECF7"},lore=[{"text":"by Stoupy","color":"#AEBBD0","italic":false}],custom_data={"switch":{"jump":true,"jump_white":true}},tooltip_style="failure"]
item replace entity @s[advancements={switch:visible/jump_white=true}] inventory.11 with white_concrete[item_name={"text":"White Jump","color":"#E4ECF7"},lore=[{"text":"by Stoupy","color":"#AEBBD0","italic":false}],custom_data={"switch":{"jump":true,"jump_white":true}},tooltip_style="success"]

item replace entity @s[advancements={switch:visible/jump_blue=false}] inventory.12 with blue_concrete[item_name={"text":"Blue Jump","color":"#2E9BFF"},lore=[{"text":"by Stoupy","color":"#AEBBD0","italic":false}],custom_data={"switch":{"jump":true,"jump_blue":true}},tooltip_style="failure"]
item replace entity @s[advancements={switch:visible/jump_blue=true}] inventory.12 with blue_concrete[item_name={"text":"Blue Jump","color":"#2E9BFF"},lore=[{"text":"by Stoupy","color":"#AEBBD0","italic":false}],custom_data={"switch":{"jump":true,"jump_blue":true}},tooltip_style="success"]

item replace entity @s[advancements={switch:visible/jump_yellow=false}] inventory.13 with yellow_concrete[item_name={"text":"Yellow Jump","color":"#FFE60A"},lore=[{"text":"by ArtiGrrr","color":"#AEBBD0","italic":false}],custom_data={"switch":{"jump":true,"jump_yellow":true}},tooltip_style="failure"]
item replace entity @s[advancements={switch:visible/jump_yellow=true}] inventory.13 with yellow_concrete[item_name={"text":"Yellow Jump","color":"#FFE60A"},lore=[{"text":"by ArtiGrrr","color":"#AEBBD0","italic":false}],custom_data={"switch":{"jump":true,"jump_yellow":true}},tooltip_style="success"]

item replace entity @s[advancements={switch:visible/jump_red=false}] inventory.14 with red_concrete[item_name={"text":"Red Jump","color":"#FF3347"},lore=[{"text":"by Stoupy","color":"#AEBBD0","italic":false}],custom_data={"switch":{"jump":true,"jump_red":true}},tooltip_style="failure"]
item replace entity @s[advancements={switch:visible/jump_red=true}] inventory.14 with red_concrete[item_name={"text":"Red Jump","color":"#FF3347"},lore=[{"text":"by Stoupy","color":"#AEBBD0","italic":false}],custom_data={"switch":{"jump":true,"jump_red":true}},tooltip_style="success"]

item replace entity @s[advancements={switch:visible/jump_brown=false}] inventory.15 with brown_concrete[item_name={"text":"Brown Jump","color":"#8B4513"},lore=[{"text":"by OfChara","color":"#AEBBD0","italic":false}],custom_data={"switch":{"jump":true,"jump_brown":true}},tooltip_style="failure"]
item replace entity @s[advancements={switch:visible/jump_brown=true}] inventory.15 with brown_concrete[item_name={"text":"Brown Jump","color":"#8B4513"},lore=[{"text":"by OfChara","color":"#AEBBD0","italic":false}],custom_data={"switch":{"jump":true,"jump_brown":true}},tooltip_style="success"]

item replace entity @s[advancements={switch:visible/jump_purple=false}] inventory.16 with purple_concrete[item_name={"text":"Purple Jump","color":"#FF8FD8"},lore=[{"text":"by AirDox","color":"#AEBBD0","italic":false}],custom_data={"switch":{"jump":true,"jump_purple":true}},tooltip_style="failure"]
item replace entity @s[advancements={switch:visible/jump_purple=true}] inventory.16 with purple_concrete[item_name={"text":"Purple Jump","color":"#FF8FD8"},lore=[{"text":"by AirDox","color":"#AEBBD0","italic":false}],custom_data={"switch":{"jump":true,"jump_purple":true}},tooltip_style="success"]

item replace entity @s[advancements={switch:visible/jump_duality=false}] inventory.21 with copper_block[item_name={"text":"Duality Jump","color":"#B87333"},lore=[{"text":"by Stoupy / AirDox / OfChara","color":"#AEBBD0","italic":false}],custom_data={"switch":{"jump":true,"jump_duality":true}},tooltip_style="failure"]
item replace entity @s[advancements={switch:visible/jump_duality=true}] inventory.21 with copper_block[item_name={"text":"Duality Jump","color":"#B87333"},lore=[{"text":"by Stoupy / AirDox / OfChara","color":"#AEBBD0","italic":false}],custom_data={"switch":{"jump":true,"jump_duality":true}},tooltip_style="success"]

item replace entity @s[advancements={switch:visible/jump_graviglitch=false}] inventory.22 with suspicious_gravel[item_name={"text":"GraviGlitch Jump","color":"#676767"},lore=[{"text":"by OfChara / Stoupy","color":"#AEBBD0","italic":false}],custom_data={"switch":{"jump":true,"jump_graviglitch":true}},tooltip_style="failure"]
item replace entity @s[advancements={switch:visible/jump_graviglitch=true}] inventory.22 with suspicious_gravel[item_name={"text":"GraviGlitch Jump","color":"#676767"},lore=[{"text":"by OfChara / Stoupy","color":"#AEBBD0","italic":false}],custom_data={"switch":{"jump":true,"jump_graviglitch":true}},tooltip_style="success"]

item replace entity @s[advancements={switch:visible/jump_obsidian=false}] inventory.23 with crying_obsidian[item_name={"text":"Obsidian Jump","color":"#6B788F"},lore=[{"text":"by Stoupy","color":"#AEBBD0","italic":false}],custom_data={"switch":{"jump":true,"jump_obsidian":true}},tooltip_style="failure"]
item replace entity @s[advancements={switch:visible/jump_obsidian=true}] inventory.23 with crying_obsidian[item_name={"text":"Obsidian Jump","color":"#6B788F"},lore=[{"text":"by Stoupy","color":"#AEBBD0","italic":false}],custom_data={"switch":{"jump":true,"jump_obsidian":true}},tooltip_style="success"]

# Overlay drawn over the whole inventory screen and the effects sidebar (see src/resource_pack/lobby_gui.py)
item replace entity @s inventory.0 with paper[item_model="switch:gui/lobby",max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={"switch":{"lobby_gui":true}}]
item replace entity @s inventory.26 with paper[item_model="switch:gui/lobby_wing",max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={"switch":{"lobby_gui":true}}]

# Practice mode items (toggle + action items if enabled)
function switch:player/practice/give_items

tag @s remove switch.lobby_setup

