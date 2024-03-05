
## No grip block
# This block is used to disable grip for the kart

# Define last effect and timer
scoreboard players set @s switch.effects.last 6
scoreboard players set @s switch.effects.timer 50

# Title and subtitle to the player
tag @s add shopping_kart.temp
function switch:translations/modes_kart_racer_blocks_no_grip
execute on passengers at @s run playsound entity.experience_orb.pickup ambient @s ^ ^ ^10 100 1 1
tag @s remove shopping_kart.temp

# Applying effects
tag @s add shopping_kart.no_grip

