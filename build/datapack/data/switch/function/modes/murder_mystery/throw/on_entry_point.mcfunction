
#> switch:modes/murder_mystery/throw/on_entry_point
#
# @executed	anchored eyes & positioned ^ ^ ^
#
# @within	switch:modes/murder_mystery/throw/throw {with:{blocks:true,entities:false,max_distance:128,on_entry_point:"function switch:modes/murder_mystery/throw/on_entry_point"}} [ anchored eyes & positioned ^ ^ ^ ]
#

# Copy destination (absolute x10)
data modify storage switch:temp destination set value [0.0d, 0.0d, 0.0d]
scoreboard players operation #destination_x switch.data = $raycast.targeted_block.x bs.lambda
scoreboard players operation #destination_y switch.data = $raycast.targeted_block.y bs.lambda
scoreboard players operation #destination_z switch.data = $raycast.targeted_block.z bs.lambda
scoreboard players operation #destination_x switch.data *= #10 switch.data
scoreboard players operation #destination_y switch.data *= #10 switch.data
scoreboard players operation #destination_z switch.data *= #10 switch.data

# Get the relative position to the block (x1000 -> x10)
scoreboard players operation #digit_x switch.data = $raycast.entry_point.x bs.lambda
scoreboard players operation #digit_y switch.data = $raycast.entry_point.y bs.lambda
scoreboard players operation #digit_z switch.data = $raycast.entry_point.z bs.lambda
scoreboard players operation #digit_x switch.data /= #100 switch.data
scoreboard players operation #digit_y switch.data /= #100 switch.data
scoreboard players operation #digit_z switch.data /= #100 switch.data

# Add the relative position to the block position
scoreboard players operation #destination_x switch.data += #digit_x switch.data
scoreboard players operation #destination_y switch.data += #digit_y switch.data
scoreboard players operation #destination_z switch.data += #digit_z switch.data

# Store the destination in the item
execute store result storage switch:temp destination[0] double 0.1 run scoreboard players get #destination_x switch.data
execute store result storage switch:temp destination[1] double 0.1 run scoreboard players get #destination_y switch.data
execute store result storage switch:temp destination[2] double 0.1 run scoreboard players get #destination_z switch.data

