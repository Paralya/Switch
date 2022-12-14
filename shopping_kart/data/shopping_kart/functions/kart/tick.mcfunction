
#Slow down, Speed up engine, refresh booster timer
execute if score @s shopping_kart.engine matches 1.. run function shopping_kart:kart/speed_down
execute if score @s shopping_kart.reactor_boost matches 1.. run particle flame ~ ~ ~ 0.4 0.4 0.4 0 5
execute if score @s shopping_kart.reactor_boost matches 1.. run scoreboard players remove @s shopping_kart.reactor_boost 1
execute if entity @s[tag=shopping_kart.speed_up] run function shopping_kart:kart/speed_up
scoreboard players remove @s[scores={shopping_kart.booster_timer=1..}] shopping_kart.booster_timer 1


#Tick calculations
execute if entity @s[tag=!shopping_kart.calculated] run function shopping_kart:kart/tick_calculations
tag @s remove shopping_kart.calculated

