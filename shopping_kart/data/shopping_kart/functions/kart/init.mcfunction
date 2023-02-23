
tag @s add shopping_kart.kart
scoreboard players operation @s shopping_kart.max_engine = #default_max_engine shopping_kart.data
scoreboard players set @s shopping_kart.booster_timer 0
tag @s remove shopping_kart.init

# Kart Visual
scoreboard players add #next_id shopping_kart.id 1
summon armor_stand ~ ~ ~ {Tags:["shopping_kart.init"],Invulnerable:1b,Marker:1b,NoGravity:1b,Invisible:1b}
execute as @e[type=armor_stand,tag=shopping_kart.init] run function shopping_kart:kart/init_visual
scoreboard players operation @s shopping_kart.id = #next_id shopping_kart.id
effect give @s invisibility 999999 0 true

