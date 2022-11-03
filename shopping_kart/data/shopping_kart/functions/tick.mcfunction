
execute as @a[gamemode=!spectator,predicate=shopping_kart:has_vehicle,nbt=!{Motion:[0.00d,0.00d,0.00d]}] at @s run function shopping_kart:kart/player_moving
execute as @e[tag=shopping_kart.kart] at @s run function shopping_kart:kart/tick
execute as @e[tag=shopping_kart.kart_visual] run function shopping_kart:kart/tick_visual

