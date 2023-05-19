
# Add kart nbt
tag @s add shopping_kart.kart
data modify entity @s Invulnerable set value 1b
data modify entity @s DeathLootTable set value "none"
data modify entity @s Saddle set value 0b
data modify entity @s Silent set value 1b

# Add kart scoreboard
scoreboard players operation @s shopping_kart.max_engine = #default_max_engine shopping_kart.data
scoreboard players set @s shopping_kart.booster_timer 0

# Kart Visual
scoreboard players add #next_id shopping_kart.id 1
execute at @s summon armor_stand run function shopping_kart:kart/init_visual
scoreboard players operation @s shopping_kart.id = #next_id shopping_kart.id
effect give @s invisibility infinite 0 true

