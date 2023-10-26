
tag @s add shopping_kart.temp
execute as @a[tag=!detached,predicate=shopping_kart:has_vehicle_with_tag,limit=1] at @s run function switch:modes/kart_racer/checkpoints/forced_respawn

