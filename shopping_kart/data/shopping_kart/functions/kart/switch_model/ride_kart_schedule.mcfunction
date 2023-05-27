
# Run function on every kart that is waiting for a passenger
execute as @e[tag=shopping_kart.waiting_for_passenger] run function shopping_kart:kart/switch_model/verify_passengers
execute as @e[tag=shopping_kart.waiting_for_passenger] at @s run function shopping_kart:kart/switch_model/ride_kart_entity

