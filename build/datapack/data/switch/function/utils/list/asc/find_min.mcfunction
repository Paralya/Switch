
#> switch:utils/list/asc/find_min
#
# @within	switch:utils/list/asc/selection_sort_loop
#			switch:utils/list/asc/find_min
#

# Get the current element value
execute store result score #current_value sorter.val run data get storage sorter:temp copy_array[0].value 1000

# Check if this is the new minimum
execute if score #current_value sorter.val < #min_value sorter.val run scoreboard players operation #min_index sorter.val = #current_index sorter.val
execute if score #current_value sorter.val < #min_value sorter.val run scoreboard players operation #min_value sorter.val = #current_value sorter.val

# Move to the next element
scoreboard players add #current_index sorter.val 1
data remove storage sorter:temp copy_array[0]

# Continue if there are more elements
execute if data storage sorter:temp copy_array[0] run function switch:utils/list/asc/find_min

