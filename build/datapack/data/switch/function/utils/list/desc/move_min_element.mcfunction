
#> switch:utils/list/desc/move_min_element
#
# @executed	in switch:game
#
# @within	switch:utils/list/desc/selection_sort_loop with storage sorter:temp args
#
# @args		min_index (unknown)
#

# Add the minimum element to the sorted array
$data modify storage sorter:temp sorted_array append from storage sorter:temp original_array[$(min_index)]

# Remove the minimum element from the original array
$data remove storage sorter:temp original_array[$(min_index)]

