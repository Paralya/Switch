
# Make sure the player is spectating the entity
scoreboard players operation #player_id switch.id = @s switch.id
tag @p[predicate=switch:has_same_id] add switch.temp
spectate @s @p[tag=switch.temp]

# Only pass 1/Interpolation of the time
scoreboard players add @s switch.data 1
execute store result score #cinematic_interpolation switch.data run data get entity @s item.components."minecraft:custom_data".interpolation
execute if score @s switch.data < #cinematic_interpolation switch.data run return run tag @a[tag=switch.temp] remove switch.temp
execute if score @s switch.data >= #cinematic_interpolation switch.data run scoreboard players set @s switch.data 0

# Teleport to the next point and remove it from the list
data modify entity @s Pos set from entity @s item.components."minecraft:custom_data".points[0]
data remove entity @s item.components."minecraft:custom_data".points[0]

# Rotate to the next rotation and remove it from the list
data modify entity @s Rotation set from entity @s item.components."minecraft:custom_data".rotations[0]
data remove entity @s item.components."minecraft:custom_data".rotations[0]

# If the list is empty, finish the cinematic
execute unless data entity @s item.components."minecraft:custom_data".points[0] run function switch:cinematic/finish

# Remove the tag
tag @a[tag=switch.temp] remove switch.temp

