
execute as @a[gamemode=!spectator,predicate=switch:has_vehicle,nbt=!{Motion:[0.00d,0.00d,0.00d]}] run function shopping_kart:kart/player_moving
execute as @e[tag=switch.kart] at @s run function shopping_kart:kart/tick
execute as @e[tag=switch.kart_visual] run function shopping_kart:kart/tick_visual

