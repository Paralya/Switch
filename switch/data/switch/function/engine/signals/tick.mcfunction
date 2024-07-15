
# Launch tick signal
data modify storage switch:main input set value {id:""}
data modify storage switch:main input.id set from storage switch:main current_game
function switch:engine/signals/macro_tick with storage switch:main input

