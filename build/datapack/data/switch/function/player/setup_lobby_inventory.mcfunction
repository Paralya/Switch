
#> switch:player/setup_lobby_inventory
#
# @executed	as the player & at current position
#
# @within	switch:player/restore_lobby_gui
#			switch:player/tick_detach
#

tag @s add switch.lobby_setup

function switch:player/setup_lobby_jumps

# Overlay drawn over the whole inventory screen and the effects sidebar (see src/resource_pack/lobby_gui.py)
item replace entity @s inventory.0 with paper[item_model="switch:gui/lobby",max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={"switch":{"lobby_gui":true}}]
item replace entity @s inventory.26 with paper[item_model="switch:gui/lobby_wing",max_stack_size=1,tooltip_display={hide_tooltip:true},custom_data={"switch":{"lobby_gui":true}}]

# Practice mode items (toggle + action items if enabled)
function switch:player/practice/give_items

tag @s remove switch.lobby_setup

