
advancement revoke @s only switch:infected/inventory_changed
execute if score #state switch.data matches 3 if data storage switch:main {current_game:"infected"} run function switch:modes/infected/advancements/inventory_changed_confirm

