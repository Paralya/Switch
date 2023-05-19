
# Add Armor Stand nbt
tag @s add shopping_kart.kart_visual
data modify entity @s Invulnerable set value 1b
data modify entity @s Marker set value 1b
data modify entity @s NoGravity set value 1b
data modify entity @s Invisible set value 1b

# Scoreboard + Model
scoreboard players operation @s shopping_kart.id = #next_id shopping_kart.id
item replace entity @s armor.head with golden_hoe{CustomModelData:2010000}

