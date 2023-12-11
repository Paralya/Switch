
# Log message
data modify storage switch:main MessageToLog set value '[{"text": "Lancement d\'une partie de `"},{"nbt":"current_game_name","storage":"switch:main","interpret":false},{"text":"` !"}]'
function switch:engine/log_message/apply

# Increment total games played
execute if score #test_mode switch.data matches 1.. run return 1
data modify storage switch:main input set value {id:""}
data modify storage switch:main input.id set from storage switch:main current_game
function switch:stats/increment_minigame_played with storage switch:main input

