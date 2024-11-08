
## Cruise control block
# This block is used to change the max engine speed of
# the kart to the current engine speed of the kart

# Define last effect and timer
scoreboard players set @s switch.effects.last 4
scoreboard players set @s switch.effects.timer 50

# Title and subtitle to the player
tag @s add switch.temp
function switch:translations/modes_kart_racer_blocks_cruise_control
execute on passengers at @s run playsound entity.experience_orb.pickup ambient @s ^ ^ ^10 100 1 1
tag @s remove switch.temp

# Applying effects
scoreboard players operation @s shopping_kart.cruise_control = @s shopping_kart.max_engine
scoreboard players operation @s shopping_kart.max_engine = @s shopping_kart.engine

