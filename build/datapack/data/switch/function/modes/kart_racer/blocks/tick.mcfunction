
#> switch:modes/kart_racer/blocks/tick
#
# @executed	at @s
#
# @within	switch:modes/kart_racer/tick [ at @s ]
#

## Out of map
execute if block ~ ~-1 ~ barrier if block ~ ~-2 ~ structure_void run function switch:modes/kart_racer/out_of_map

## Trackmania blocks
execute if score @s switch.effects.timer matches 1.. run scoreboard players remove @s switch.effects.timer 1

# Reset Block
execute unless score @s switch.effects.last matches 1 if entity @e[tag=switch.kart_racer.reset_block,distance=..4] at @s if block ~ ~-1 ~ lime_wool run function switch:modes/kart_racer/blocks/reset
execute if score @s switch.effects.last matches 1 unless score @s switch.effects.timer matches 1.. if entity @e[tag=switch.kart_racer.reset_block,distance=..4] at @s if block ~ ~-1 ~ lime_wool run function switch:modes/kart_racer/blocks/reset

# Engine Off Block
execute unless score @s switch.effects.last matches 2 if entity @e[tag=switch.kart_racer.engine_off_block,distance=..4] at @s if block ~ ~-1 ~ red_wool run function switch:modes/kart_racer/blocks/engine_off
execute if score @s switch.effects.last matches 2 unless score @s switch.effects.timer matches 1.. if entity @e[tag=switch.kart_racer.engine_off_block,distance=..4] at @s if block ~ ~-1 ~ red_wool run function switch:modes/kart_racer/blocks/engine_off

# No Steering Block
execute unless score @s switch.effects.last matches 3 if entity @e[tag=switch.kart_racer.no_steering_block,distance=..4] at @s if block ~ ~-1 ~ purple_wool run function switch:modes/kart_racer/blocks/no_steering
execute if score @s switch.effects.last matches 3 unless score @s switch.effects.timer matches 1.. if entity @e[tag=switch.kart_racer.no_steering_block,distance=..4] at @s if block ~ ~-1 ~ purple_wool run function switch:modes/kart_racer/blocks/no_steering

# Cruise Control Block
execute unless score @s switch.effects.last matches 4 if entity @e[tag=switch.kart_racer.cruise_control_block,distance=..4] at @s if block ~ ~-1 ~ blue_wool run function switch:modes/kart_racer/blocks/cruise_control
execute if score @s switch.effects.last matches 4 unless score @s switch.effects.timer matches 1.. if entity @e[tag=switch.kart_racer.cruise_control_block,distance=..4] at @s if block ~ ~-1 ~ blue_wool run function switch:modes/kart_racer/blocks/cruise_control

# Reactor Boost Block
execute unless score @s switch.effects.last matches 5 if entity @e[tag=switch.kart_racer.reactor_boost_block,distance=..4] at @s if block ~ ~-1 ~ orange_wool run function switch:modes/kart_racer/blocks/reactor_boost
execute if score @s switch.effects.last matches 5 unless score @s switch.effects.timer matches 1.. if entity @e[tag=switch.kart_racer.reactor_boost_block,distance=..4] at @s if block ~ ~-1 ~ orange_wool run function switch:modes/kart_racer/blocks/reactor_boost

# No Grip Block
execute unless score @s switch.effects.last matches 6 if entity @e[tag=switch.kart_racer.no_grip_block,distance=..4] at @s if block ~ ~-1 ~ light_blue_wool run function switch:modes/kart_racer/blocks/no_grip
execute if score @s switch.effects.last matches 6 unless score @s switch.effects.timer matches 1.. if entity @e[tag=switch.kart_racer.no_grip_block,distance=..4] at @s if block ~ ~-1 ~ light_blue_wool run function switch:modes/kart_racer/blocks/no_grip

