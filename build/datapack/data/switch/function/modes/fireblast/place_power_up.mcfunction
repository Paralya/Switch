
#> switch:modes/fireblast/place_power_up
#
# @executed	as @e[type=item,tag=switch.new]
#
# @within	switch:modes/fireblast/summon_power_up [ as @e[type=item,tag=switch.new] ]
#

# Replace temporary tag with permanent tag
tag @s add switch.fireblast.power_up
tag @s remove switch.new

# Place the power-up at a random position
function switch:maps/spread_one_player

# Add glowing effect to the power-up
effect give @s glowing infinite 255 true
data modify entity @s Glowing set value true

# Set the power-up custom data
data modify entity @s Item.components."minecraft:custom_data".switch.power_up set value true

