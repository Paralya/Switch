
## Kill self is there is no vehicle, but take first rotation otherwise
data remove storage shopping_kart:main Rotation
execute on vehicle run data modify storage shopping_kart:main Rotation set from entity @s Rotation[0]
execute store result score #rotation shopping_kart.data run data get entity @s Rotation[0] 10000
execute store result score #rotation shopping_kart.data run data get storage shopping_kart:main Rotation 10000
scoreboard players add #rotation shopping_kart.data 1800000
execute store result entity @s Rotation[0] float 0.0001 run scoreboard players get #rotation shopping_kart.data
execute unless data storage shopping_kart:main Rotation run kill @s

