
#> switch:utils/list/asc/append_remaining
#
# @within	switch:utils/list/asc/selection_sort_loop
#

# Append remaining unsorted elements to the sorted array
data modify storage sorter:temp sorted_array append from storage sorter:temp original_array[]

