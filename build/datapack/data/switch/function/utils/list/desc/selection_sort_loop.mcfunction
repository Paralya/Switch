
#> switch:utils/list/desc/selection_sort_loop
#
# @executed	in switch:game
#
# @within	switch:utils/list/desc/sort
#			switch:utils/list/desc/selection_sort_loop
#

# Reset variables for finding minimum
scoreboard players set #current_index sorter.val 0
scoreboard players set #min_value sorter.val 2147483647
scoreboard players set #min_index sorter.val 0

# Copy the original array to the working copy
data modify storage sorter:temp copy_array set from storage sorter:temp original_array

# Find the minimum element
execute if data storage sorter:temp copy_array[0] run function switch:utils/list/desc/find_min

# Move the minimum element to the sorted array
execute store result storage sorter:temp args.min_index int 1 run scoreboard players get #min_index sorter.val
function switch:utils/list/desc/move_min_element with storage sorter:temp args

# Increment sorted count
scoreboard players add #sorted_count sorter.val 1

# Continue if limit not reached and there are more elements to sort
execute if score #sorted_count sorter.val matches ..14 if data storage sorter:temp original_array[0] run return run function switch:utils/list/desc/selection_sort_loop

# If limit reached, append remaining elements without sorting
execute if score #sorted_count sorter.val matches 15 run function switch:utils/list/desc/append_remaining

