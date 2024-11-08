
## Speed up engine progressively depending on surface
# Surface : 0 = normal, 1 = fast, 2 = slippery, 3 = slow, 4 = very slow
# When in air : surface = 0
function shopping_kart:kart/physics/get_surface

# Real gain is (add - 28) cause of speed_down.mcfunction
scoreboard players set #add shopping_kart.engine 36
execute if score #surface shopping_kart.data matches 0 unless entity @s[tag=shopping_kart.can_fly] if block ~ ~-.1 ~ air run scoreboard players set #add shopping_kart.engine 26
execute if score #surface shopping_kart.data matches 1..2 run scoreboard players set #add shopping_kart.engine 34
execute if score #surface shopping_kart.data matches 3 run scoreboard players set #add shopping_kart.engine 32
execute if score #surface shopping_kart.data matches 4 run scoreboard players set #add shopping_kart.engine 30

## Inspired from trackmania
execute unless score @s shopping_kart.engine matches 0 if entity @s[tag=shopping_kart.engine_off] run scoreboard players set #add shopping_kart.engine 22
execute if score @s shopping_kart.engine matches 0 if entity @s[tag=shopping_kart.engine_off] run scoreboard players set #add shopping_kart.engine 0
execute if score @s shopping_kart.reactor_boost matches 1.. run scoreboard players set #add shopping_kart.engine 56

scoreboard players operation @s shopping_kart.engine += #add shopping_kart.engine
execute if score @s shopping_kart.engine > @s shopping_kart.max_engine run scoreboard players operation @s shopping_kart.engine = @s shopping_kart.max_engine
tag @s remove shopping_kart.speed_up

