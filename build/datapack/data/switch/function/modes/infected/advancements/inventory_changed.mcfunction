
#> switch:modes/infected/advancements/inventory_changed
#
# @executed	as the player & at current position
#
# @within	advancement switch:infected/inventory_changed
#

advancement revoke @s only switch:infected/inventory_changed
execute if score #engine_state switch.data matches 3 if data storage switch:main {current_game:"infected"} run function switch:modes/infected/advancements/inventory_changed_confirm

