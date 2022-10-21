
#Speed up engine to progressively (32/3000)
scoreboard players add @s shopping_kart.engine 32
execute if block ~ ~-.1 ~ air run scoreboard players remove @s shopping_kart.engine 6
execute if score @s shopping_kart.engine > @s shopping_kart.max_engine run scoreboard players operation @s shopping_kart.engine = @s shopping_kart.max_engine

tag @s remove shopping_kart.speed_up

