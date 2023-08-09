
# If not no_steering tag, get rotation from player, else keep rotation
execute if entity @s[tag=!shopping_kart.no_steering] on passengers run data modify storage shopping_kart:main Rotation set from entity @s Rotation
execute if entity @s[tag=!shopping_kart.no_steering] run data modify entity @s Rotation[0] set from storage shopping_kart:main Rotation[0]

# Reuse not steering marker function
execute positioned 0 0 0 summon marker run function shopping_kart:kart/effects/no_steering_marker
function shopping_kart:kart/called_by_player


