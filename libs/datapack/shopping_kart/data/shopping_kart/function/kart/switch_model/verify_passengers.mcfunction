
# Add tag if no passenger, remove if there is one
scoreboard players set #has_passenger shopping_kart.data 0
execute on passengers if entity @s[type=player] run scoreboard players set #has_passenger shopping_kart.data 1
execute if score #has_passenger shopping_kart.data matches 0 run tag @s add shopping_kart.waiting_for_passenger
execute if score #has_passenger shopping_kart.data matches 1 run tag @s remove shopping_kart.waiting_for_passenger

