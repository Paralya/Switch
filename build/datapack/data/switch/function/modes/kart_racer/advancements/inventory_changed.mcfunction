
#> switch:modes/kart_racer/advancements/inventory_changed
#
# @executed	as the player & at current position
#
# @within	advancement switch:kart_racer/inventory_changed
#

execute if score #engine_state switch.data matches 3 if data storage switch:main {current_game:"kart_racer"} if entity @s[gamemode=!creative,tag=!detached] run function switch:modes/kart_racer/advancements/inventory_changed_confirm
advancement revoke @s only switch:kart_racer/inventory_changed

