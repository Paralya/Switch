
execute if data storage switch:main {current_game:"kart_racer"} if entity @s[gamemode=!creative] run function switch:modes/kart_racer/advancements/inventory_changed_confirm
advancement revoke @s only switch:kart_racer/inventory_changed

