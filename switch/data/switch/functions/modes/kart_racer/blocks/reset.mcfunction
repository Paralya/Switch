
tag @s add shopping_kart.temp

scoreboard players set @s switch.effects.last 1
scoreboard players set @s switch.effects.timer 50

scoreboard players set #have_passenger shopping_kart.data 0
execute store success score #have_passenger shopping_kart.data positioned ~ ~1 ~ if entity @a[distance=..1,predicate=shopping_kart:has_vehicle_with_tag]
execute positioned ~ ~1 ~ run title @a[distance=..1,predicate=shopping_kart:has_vehicle_with_tag] title ""
execute positioned ~ ~1 ~ run title @a[distance=..1,predicate=shopping_kart:has_vehicle_with_tag] subtitle [{"text":"Reset","color":"yellow"}]

scoreboard players set @s shopping_kart.reactor_boost 0
tag @s remove shopping_kart.engine_off
tag @s remove shopping_kart.no_steering
tag @s remove shopping_kart.cruise_control

tag @s remove shopping_kart.temp

