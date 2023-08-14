
advancement revoke @s only switch:build_battle/inventory_changed
execute if data storage switch:main {current_game:"build_battle"} in switch:build_battle run function switch:modes/build_battle/preparation/inventory_changed
