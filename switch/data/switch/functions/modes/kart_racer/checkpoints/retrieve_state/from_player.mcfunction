
data modify storage switch:main copy set from storage switch:main respawn_states
function switch:modes/kart_racer/checkpoints/retrieve_state/get_storage_loop

#copy[0] is the player's respawn state
##TODO: summon marker and teleport player to Pos to rotate his head
##and next apply every nbt and scores to the kart
tp @s TheMarker

tag @s add shopping_kart.temp
execute as @e[tag=shopping_kart.kart,predicate=shopping_kart:have_player_passenger] run function switch:modes/kart_racer/checkpoints/retrieve_state/from_kart
kill TheMarker
tag @s remove shopping_kart.temp

