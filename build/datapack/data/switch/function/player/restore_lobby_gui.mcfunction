
#> switch:player/restore_lobby_gui
#
# @executed	as the player & at current position
#
# @within	switch:engine/signals/inventory_changed
#

execute if items entity @s inventory.0 *[item_model="switch:gui/lobby"] if items entity @s inventory.26 *[item_model="switch:gui/lobby_wing"] run return 0
execute unless items entity @s inventory.* *[custom_data~{"switch":{"jump":true}}] run return 0

tag @s add switch.lobby_setup
clear @s *[custom_data~{"switch":{"lobby_gui":true}}]
execute as @e[type=item,distance=..4] if items entity @s contents *[custom_data~{"switch":{"lobby_gui":true}}] run kill @s
function switch:player/setup_lobby_inventory

