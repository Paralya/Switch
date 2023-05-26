
# Define multiplier depending on engine speed & block stepping on
# Surface : 0 = normal, 1 = fast, 2 = slippery, 3 = slow, 4 = very slow
# When in air : surface = 0
scoreboard players set #surface shopping_kart.data 0
execute if entity @s[tag=!shopping_kart.in_water] if block ~ ~-.1 ~ #shopping_kart:kart_surfaces/fast run scoreboard players set #surface shopping_kart.data 1
execute if entity @s[tag=!shopping_kart.in_water] if block ~ ~-.1 ~ #shopping_kart:kart_surfaces/slippery run scoreboard players set #surface shopping_kart.data 2
execute if entity @s[tag=!shopping_kart.in_water] if block ~ ~-.1 ~ #shopping_kart:kart_surfaces/slow run scoreboard players set #surface shopping_kart.data 3
execute if entity @s[tag=!shopping_kart.in_water] if block ~ ~-.1 ~ #shopping_kart:kart_surfaces/very_slow run scoreboard players set #surface shopping_kart.data 4
execute if entity @s[tag=shopping_kart.no_grip] run scoreboard players set #surface shopping_kart.data 2

