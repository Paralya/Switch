
## Cruise control block
# This block is used to change the max engine speed of
# the kart to the current engine speed of the kart

# Define last effect and timer
scoreboard players set @s switch.effects.last 4
scoreboard players set @s switch.effects.timer 50

# Title and subtitle to the player
tag @s add shopping_kart.temp
execute positioned ~ ~1 ~ run title @a[distance=..1,predicate=shopping_kart:has_vehicle_with_tag] title ""
execute positioned ~ ~1 ~ run title @a[distance=..1,predicate=shopping_kart:has_vehicle_with_tag] subtitle [{"text":"Cruise Control","color":"blue"}]
execute positioned ~ ~1 ~ as @a[distance=..1,predicate=shopping_kart:has_vehicle_with_tag] at @s run playsound entity.experience_orb.pickup ambient @s ^ ^ ^10 100 1 1
tag @s remove shopping_kart.temp

# Applying effects
scoreboard players operation @s shopping_kart.cruise_control = @s shopping_kart.max_engine
scoreboard players operation @s shopping_kart.max_engine = @s shopping_kart.engine

