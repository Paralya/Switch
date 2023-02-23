
## Apply new motion & update old motion (80% or 96.66% of new motion)
# Depending on the surface, the kart will slide or not
data modify entity @s Motion[0] set from storage shopping_kart:main Motion[0]
data modify entity @s Motion[2] set from storage shopping_kart:main Motion[2]
execute if score #surface shopping_kart.data matches 0..1 store result score @s shopping_kart.motion_x run data get storage shopping_kart:main Motion[0] 8000000
execute if score #surface shopping_kart.data matches 0..1 store result score @s shopping_kart.motion_z run data get storage shopping_kart:main Motion[2] 8000000
execute if score #surface shopping_kart.data matches 2 store result score @s shopping_kart.motion_x run data get storage shopping_kart:main Motion[0] 9666666
execute if score #surface shopping_kart.data matches 2 store result score @s shopping_kart.motion_z run data get storage shopping_kart:main Motion[2] 9666666
execute if score #surface shopping_kart.data matches 3..4 store result score @s shopping_kart.motion_x run data get storage shopping_kart:main Motion[0] 8000000
execute if score #surface shopping_kart.data matches 3..4 store result score @s shopping_kart.motion_z run data get storage shopping_kart:main Motion[2] 8000000
data remove storage shopping_kart:main Motion

