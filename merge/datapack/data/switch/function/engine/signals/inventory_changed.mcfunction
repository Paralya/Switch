
# Revoke inventory_changed advancement
advancement revoke @s only switch:inventory_changed

# Launch inventory_changed signal
data modify storage switch:main input set value {id:""}
data modify storage switch:main input.id set from storage switch:main current_game
function switch:engine/signals/macro_inventory_changed with storage switch:main input

