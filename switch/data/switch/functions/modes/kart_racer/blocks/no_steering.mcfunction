
## No steering block
# This block is used to disable steering for the kart

# Define last effect and timer
scoreboard players set @s switch.effects.last 3
scoreboard players set @s switch.effects.timer 50

# Title and subtitle to the player
tag @s add shopping_kart.temp
execute positioned ~ ~1 ~ run title @a[distance=..1,predicate=shopping_kart:has_vehicle_with_tag] title ""
execute positioned ~ ~1 ~ run title @a[distance=..1,predicate=shopping_kart:has_vehicle_with_tag] subtitle [{"text":"No Steering","color":"light_purple"}]
execute positioned ~ ~1 ~ as @a[distance=..1,predicate=shopping_kart:has_vehicle_with_tag] at @s run playsound entity.experience_orb.pickup ambient @s ^ ^ ^10 100 1 1
tag @s remove shopping_kart.temp

# Applying effects
tag @s add shopping_kart.no_steering

