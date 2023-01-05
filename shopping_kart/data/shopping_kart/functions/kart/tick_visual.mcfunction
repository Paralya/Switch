
##Kart visual
scoreboard players set #success shopping_kart.data 0
scoreboard players operation #predicate shopping_kart.id = @s shopping_kart.id
execute store success score #success shopping_kart.data run data modify storage shopping_kart:temp all set from entity @e[type=!armor_stand,tag=shopping_kart.kart,predicate=shopping_kart:has_same_id,limit=1]
execute if score #success shopping_kart.data matches 0 run scoreboard players add @s shopping_kart.data 1
execute if score #success shopping_kart.data matches 0 if score @s shopping_kart.data matches 4.. run kill @s
execute if score #success shopping_kart.data matches 1 run data modify entity @s Pos set from storage shopping_kart:temp all.Pos
execute if score #success shopping_kart.data matches 1 run data modify entity @s Motion set from storage shopping_kart:temp all.Motion
execute if score #success shopping_kart.data matches 1 run data modify entity @s Rotation set from storage shopping_kart:temp all.Rotation

