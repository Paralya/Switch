
## Engine off block
# This block is used to turn off the engine

# Define last effect and timer
scoreboard players set @s switch.effects.last 2
scoreboard players set @s switch.effects.timer 50

# Title and subtitle to the player
tag @s add shopping_kart.temp
execute on passengers run title @s title ""
execute on passengers run title @s subtitle [{"text":"Engine Off","color":"red"}]
execute on passengers at @s run playsound entity.experience_orb.pickup ambient @s ^ ^ ^10 100 1 1
tag @s remove shopping_kart.temp

# Applying effects
tag @s add shopping_kart.engine_off

