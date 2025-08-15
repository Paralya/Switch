
## No steering block
# This block is used to disable steering for the kart

# Define last effect and timer
scoreboard players set @s switch.effects.last 3
scoreboard players set @s switch.effects.timer 50

# Title and subtitle to the player
tag @s add switch.temp
function switch:translations/modes_race_blocks_no_steering
execute on passengers at @s run playsound entity.experience_orb.pickup ambient @s ^ ^ ^10 100 1 1
tag @s remove switch.temp

# Applying effects
tag @s add shopping_kart.no_steering

