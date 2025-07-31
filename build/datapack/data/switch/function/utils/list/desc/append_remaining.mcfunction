
#> switch:utils/list/desc/append_remaining
#
# @executed	in switch:game
#
# @within	switch:utils/list/desc/selection_sort_loop
#

# Append remaining unsorted elements to the sorted array
data modify storage sorter:temp sorted_array append from storage sorter:temp original_array[]

