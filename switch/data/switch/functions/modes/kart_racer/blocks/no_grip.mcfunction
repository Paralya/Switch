
## No grip block
# This block is used to disable grip for the kart

# Define last effect and timer
scoreboard players set @s switch.effects.last 6
scoreboard players set @s switch.effects.timer 50

# Title and subtitle to the player
tag @s add shopping_kart.temp
execute positioned ~ ~1 ~ run title @a[distance=..1,predicate=shopping_kart:has_vehicle_with_tag] title ""
execute positioned ~ ~1 ~ run title @a[distance=..1,predicate=shopping_kart:has_vehicle_with_tag] subtitle [{"text":"No Grip","color":"aqua"}]
execute positioned ~ ~1 ~ as @a[distance=..1,predicate=shopping_kart:has_vehicle_with_tag] at @s run playsound entity.experience_orb.pickup ambient @s ^ ^ ^10 100 1 1
tag @s remove shopping_kart.temp

# Applying effects
tag @s add shopping_kart.no_grip

