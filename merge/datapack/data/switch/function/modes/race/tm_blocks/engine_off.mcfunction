
## Engine off block
# This block is used to turn off the engine

# Define last effect and timer
scoreboard players set @s switch.effects.last 2
scoreboard players set @s switch.effects.timer 50

# Title and subtitle to the player
tag @s add switch.temp
function switch:translations/modes_race_blocks_engine_off
execute on passengers at @s run playsound entity.experience_orb.pickup ambient @s ^ ^ ^10 100 1 1
tag @s remove switch.temp

# Applying effects
tag @s add shopping_kart.engine_off

