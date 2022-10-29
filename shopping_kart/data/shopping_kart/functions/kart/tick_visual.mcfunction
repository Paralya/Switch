
##Kart visual
scoreboard players set #success shopping_kart.data 0
scoreboard players operation #predicate shopping_kart.id = @s shopping_kart.id
execute store success score #success shopping_kart.data run tp @s @e[tag=shopping_kart.kart,predicate=shopping_kart:has_same_id,limit=1]
execute if score #success shopping_kart.data matches 0 run kill @s

