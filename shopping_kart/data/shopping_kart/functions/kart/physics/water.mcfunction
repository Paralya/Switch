
## Water specification
execute if entity @s[tag=shopping_kart.in_water,scores={shopping_kart.engine=1300..}] run data modify entity @s Motion[1] set value 0.65d
execute unless block ~ ~ ~ water run tag @s remove shopping_kart.in_water
execute if block ~ ~ ~ water run tag @s add shopping_kart.in_water
execute if entity @s[tag=shopping_kart.in_water,scores={shopping_kart.engine=750..}] if block ~ ~ ~ water run data modify entity @s Motion[1] set value -0.5d

