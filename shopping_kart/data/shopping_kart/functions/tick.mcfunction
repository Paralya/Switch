
# Detect if a player is moving
execute as @a[gamemode=!spectator,predicate=shopping_kart:has_kart_vehicle,nbt=!{Motion:[0.00d,0.00d,0.00d]}] at @s run function shopping_kart:kart/player_moving

# Kart ticking
execute as @e[tag=shopping_kart.kart] at @s run function shopping_kart:kart/tick/

# Kart visual
execute as @e[tag=shopping_kart.kart_visual] run function shopping_kart:kart/tick/visual

# Detect model change
scoreboard players enable @a shopping_kart.trigger_model
execute as @a unless score @s shopping_kart.trigger_model matches 0 at @s run function shopping_kart:kart/switch_model/trigger


