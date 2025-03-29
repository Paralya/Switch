
# Log message
data modify storage switch:main MessageToLog set value [{"text": "Arret d'une partie de `"},{"nbt":"current_game_name","storage":"switch:main","interpret":false},{"text":"` !"}]
function switch:engine/log_message/apply

# Launch stop signal
data modify storage switch:main input set value {id:""}
data modify storage switch:main input.id set from storage switch:main current_game
function switch:engine/signals/macro_stop with storage switch:main input

