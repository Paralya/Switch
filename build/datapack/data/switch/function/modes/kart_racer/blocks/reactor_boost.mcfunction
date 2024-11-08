
#> switch:modes/kart_racer/blocks/reactor_boost
#
# @within	switch:modes/kart_racer/blocks/tick
#

## Reactor boost block
# This block is used to 

# Define last effect and timer
scoreboard players set @s switch.effects.last 5
scoreboard players set @s switch.effects.timer 50

# Title and subtitle to the player
tag @s add switch.temp
function switch:translations/modes_kart_racer_blocks_reactor_boost
execute on passengers at @s run playsound entity.experience_orb.pickup ambient @s ^ ^ ^10 100 1 1
tag @s remove switch.temp

# Applying effects
scoreboard players set @s shopping_kart.reactor_boost 120

