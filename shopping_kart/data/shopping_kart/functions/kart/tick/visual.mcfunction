
## Kill self is there is no vehicle, but take first rotation otherwise
data remove storage shopping_kart:main Rotation
execute on vehicle run data modify storage shopping_kart:main Rotation set from entity @s Rotation[0]
data modify entity @s Rotation[0] set from storage shopping_kart:main Rotation
execute unless data storage shopping_kart:main Rotation run kill @s

