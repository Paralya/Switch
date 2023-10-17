
## Reactor boost block
# This block is used to 

# Define last effect and timer
scoreboard players set @s switch.effects.last 5
scoreboard players set @s switch.effects.timer 50

# Title and subtitle to the player
tag @s add shopping_kart.temp
execute on passengers run title @s title ""
execute on passengers run title @s subtitle [{"text":"Reactor Boost","color":"gold"}]
execute on passengers at @s run playsound entity.experience_orb.pickup ambient @s ^ ^ ^10 100 1 1
tag @s remove shopping_kart.temp

# Applying effects
scoreboard players set @s shopping_kart.reactor_boost 120

