
## Conditions if the vehicle have a passenger
scoreboard players set #have_passenger shopping_kart.data 0
execute store success score #have_passenger shopping_kart.data on passengers if entity @s[type=player] run scoreboard players set #have_passenger shopping_kart.data 1
execute if score #have_passenger shopping_kart.data matches 0 run effect give @s slowness 1 255 true
execute if score #have_passenger shopping_kart.data matches 1 run effect clear @s slowness

