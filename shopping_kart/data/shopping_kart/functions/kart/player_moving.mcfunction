
tag @s add shopping_kart.temp

#Store player motion and call function to the vehicle
execute store result score #motion_x shopping_kart.data run data get entity @s Motion[0] 1000000
execute store result score #motion_z shopping_kart.data run data get entity @s Motion[2] 1000000

data modify storage shopping_kart:main Rotation set from entity @s Rotation[0]
scoreboard players set #instant_engine_max shopping_kart.data 0
#execute store success score #instant_engine_max shopping_kart.data run scoreboard players reset @s[scores={right=1..}] right

execute as @e[tag=shopping_kart.kart,predicate=shopping_kart:have_player_passenger] at @s run function shopping_kart:kart/called_by_player

data remove storage shopping_kart:main Rotation
tag @s remove shopping_kart.temp

