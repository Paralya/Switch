
## Reset block
# This block is used to reset the vehicle to its default state
# (Remove cruise_control, reactor_boost, engine_off, no_steering, no_grip)

# Define last effect and timer
scoreboard players set @s switch.effects.last 1
scoreboard players set @s switch.effects.timer 50

# Title and subtitle to the player
tag @s add shopping_kart.temp
execute positioned ~ ~1 ~ run title @a[distance=..1,predicate=shopping_kart:has_vehicle_with_tag] title ""
execute positioned ~ ~1 ~ run title @a[distance=..1,predicate=shopping_kart:has_vehicle_with_tag] subtitle [{"text":"Reset","color":"green"}]
execute positioned ~ ~1 ~ as @a[distance=..1,predicate=shopping_kart:has_vehicle_with_tag] at @s run playsound entity.experience_orb.pickup ambient @s ^ ^ ^10 100 1 1
tag @s remove shopping_kart.temp

# Reseting effects
scoreboard players operation @s[scores={shopping_kart.cruise_control=1..}] shopping_kart.max_engine = @s shopping_kart.cruise_control
scoreboard players set @s shopping_kart.cruise_control 0
scoreboard players set @s shopping_kart.reactor_boost 0
tag @s remove shopping_kart.engine_off
tag @s remove shopping_kart.no_steering
tag @s remove shopping_kart.no_grip

