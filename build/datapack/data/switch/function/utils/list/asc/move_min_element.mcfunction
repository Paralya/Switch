
#> switch:utils/list/asc/move_min_element
#
# @within	switch:utils/list/asc/selection_sort_loop with storage sorter:temp args
#

# Add the minimum element to the sorted array
$data modify storage sorter:temp sorted_array append from storage sorter:temp original_array[$(min_index)]

# Remove the minimum element from the original array
$data remove storage sorter:temp original_array[$(min_index)]

