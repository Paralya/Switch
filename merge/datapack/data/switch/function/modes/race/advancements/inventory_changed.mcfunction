
execute if score #engine_state switch.data matches 3 if data storage switch:main {current_game:"race"} if entity @s[gamemode=!creative,tag=!detached] run function switch:modes/race/advancements/inventory_changed_confirm
advancement revoke @s only switch:race/inventory_changed

