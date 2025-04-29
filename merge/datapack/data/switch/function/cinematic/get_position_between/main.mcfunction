
## The idea is to be perpendicular to the half distance between the current position and the target position:
#      Half position
#            |
#            |
# Current ------- Target

## Target position - Current position
# Get the target position as integers (3 decimals)
execute store result score #target_x switch.data run data get storage switch:temp target_position[0] 1000
execute store result score #target_y switch.data run data get storage switch:temp target_position[1] 1000
execute store result score #target_z switch.data run data get storage switch:temp target_position[2] 1000

# Get the current position as integers (3 decimals)
execute store result score #current_x switch.data run data get storage switch:temp current_position[0] 1000
execute store result score #current_y switch.data run data get storage switch:temp current_position[1] 1000
execute store result score #current_z switch.data run data get storage switch:temp current_position[2] 1000

# Get the distance between the target position and the current position
scoreboard players operation #target_x switch.data -= #current_x switch.data
scoreboard players operation #target_z switch.data -= #current_z switch.data

## Get the half distance
# Divide by 2
scoreboard players operation #target_x switch.data /= #2 switch.data
scoreboard players operation #target_z switch.data /= #2 switch.data

# Add the current position to the half position (otherwise we only have the offset)
scoreboard players operation #target_x switch.data += #current_x switch.data
scoreboard players operation #target_z switch.data += #current_z switch.data

# Set the half position in the storage
data modify storage switch:temp half_position set value [0.0d, 0.0d, 0.0d]
execute store result storage switch:temp half_position[0] double 0.001 run scoreboard players get #target_x switch.data
execute store result storage switch:temp half_position[2] double 0.001 run scoreboard players get #target_z switch.data

# Return to the state where target_x and target_z are the offset
scoreboard players operation #target_x switch.data -= #current_x switch.data
scoreboard players operation #target_z switch.data -= #current_z switch.data

## Summon temporary entity that will:
# - go to the half position
# - look at the target position
# - rotate 180 degrees (+ or -)
# - move forward

# Get the max of x or z (for the forward amount)
data modify storage switch:temp forward set value {}
execute if score #target_x switch.data > #target_z switch.data run data modify storage switch:temp forward.amount set from storage switch:temp half_position[0]
execute if score #target_x switch.data <= #target_z switch.data run data modify storage switch:temp forward.amount set from storage switch:temp half_position[2]

# Multiply forward.amount by go_side
execute store result score #forward_amount switch.data run data get storage switch:temp forward.amount 1000
execute store result score #go_side switch.data run data get storage switch:temp with.go_side 1000
scoreboard players operation #forward_amount switch.data *= #go_side switch.data
execute store result storage switch:temp forward.amount double 0.000001 run scoreboard players get #forward_amount switch.data

# Summon the entity and do the side offset
execute if data storage switch:temp with.go_side summon item_display run function switch:cinematic/get_position_between/side_offset with storage switch:temp forward

# Modify the Y position with (max(current.y, target.y) + 20) (3 decimals)
execute if score #target_y switch.data > #current_y switch.data run scoreboard players operation #half_position_y switch.data = #target_y switch.data
execute if score #target_y switch.data <= #current_y switch.data run scoreboard players operation #half_position_y switch.data = #current_y switch.data
execute store result score #add_y switch.data run data get storage switch:temp with.add_y 1000
scoreboard players operation #half_position_y switch.data += #add_y switch.data
execute store result storage switch:temp half_position[1] double 0.001 run scoreboard players get #half_position_y switch.data

## Finally, append the half position to the spline
data modify storage switch:temp initial_points.points append from storage switch:temp half_position

