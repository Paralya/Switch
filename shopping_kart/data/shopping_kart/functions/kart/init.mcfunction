
# Add kart nbt
tag @s add shopping_kart.kart
data modify entity @s Silent set value 1b
data modify entity @s Invulnerable set value 1b
data modify entity @s DeathLootTable set value "none"

# Add kart scoreboard
scoreboard players operation @s shopping_kart.max_engine = #default_max_engine shopping_kart.data
scoreboard players set @s shopping_kart.booster_timer 0

# Kart Visual
scoreboard players add #next_id shopping_kart.id 1
execute if score #model shopping_kart.data matches 0..1 run tag @s add shopping_kart.current_kart
execute if score #model shopping_kart.data matches 0..1 at @s summon item_display run function shopping_kart:kart/init_visual
execute if score #model shopping_kart.data matches 0..1 run effect give @s invisibility infinite 0 true
execute if score #model shopping_kart.data matches 0..1 run tag @s remove shopping_kart.current_kart
scoreboard players operation @s shopping_kart.id = #next_id shopping_kart.id

