
#> switch:cinematic/entity_tick_at_player
#
# @executed	at @a[tag=switch.temp,limit=1]
#
# @within	switch:cinematic/entity_tick_at_self [ at @a[tag=switch.temp,limit=1] ]
#

# Make sure the player is spectating the entity
tp @a[distance=0,tag=switch.temp,limit=1] @s
execute at @s run spectate @s @a[distance=0,tag=switch.temp,limit=1]

# Handle delay before starting the cinematic
data modify storage switch:temp custom_data set from entity @s item.components."minecraft:custom_data"
execute store result score #cinematic_delay switch.data run data get storage switch:temp custom_data.delay
execute if score #cinematic_delay switch.data matches 1.. run scoreboard players remove #cinematic_delay switch.data 1
execute if score #cinematic_delay switch.data matches 1.. store result storage switch:temp custom_data.delay int 1 run scoreboard players get #cinematic_delay switch.data
execute if score #cinematic_delay switch.data matches 1.. run return run data modify entity @s item.components."minecraft:custom_data" set from storage switch:temp custom_data

# Only pass 1/Interpolation of the time
scoreboard players add @s switch.data 1
execute store result score #cinematic_interpolation switch.data run data get storage switch:temp custom_data.interpolation
execute if score @s switch.data < #cinematic_interpolation switch.data run return run data modify entity @s item.components."minecraft:custom_data" set from storage switch:temp custom_data
execute if score @s switch.data >= #cinematic_interpolation switch.data run scoreboard players set @s switch.data 0

# Teleport to the next point and remove it from the list
data modify entity @s Pos set from storage switch:temp custom_data.points[0]
data remove storage switch:temp custom_data.points[0]

# Rotate to the next rotation and remove it from the list
data modify entity @s Rotation set from storage switch:temp custom_data.rotations[0]
data remove storage switch:temp custom_data.rotations[0]

# Happy villager particles if enabled
execute store result score #particle_effect switch.data run data get storage switch:temp custom_data.particle
execute if score #particle_effect switch.data matches 1 at @s run particle glow ~ ~ ~ 0.2 0.2 0.2 0 2
execute if score #particle_effect switch.data matches 2 at @s run particle happy_villager ~ ~ ~ 0.2 0.2 0.2 0 2

# If the list is empty, finish the cinematic
execute unless data storage switch:temp custom_data.points[0] run return run function switch:cinematic/finish

# Else, copy the custom data to the entity for the next tick
data modify entity @s item.components."minecraft:custom_data" set from storage switch:temp custom_data

