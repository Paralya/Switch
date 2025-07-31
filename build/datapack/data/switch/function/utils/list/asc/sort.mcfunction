
#> switch:utils/list/asc/sort
#
# @within	???
#

# Create a scoreboard objective and storage for temporary values
scoreboard objectives add sorter.val dummy
data modify storage sorter:temp original_array set from storage switch:temp list
data modify storage sorter:temp sorted_array set value []

scoreboard players set #sorted_count sorter.val 0

# Start the selection sort process
execute if data storage sorter:temp original_array[0] run function switch:utils/list/asc/selection_sort_loop
data modify storage switch:temp list set from storage sorter:temp sorted_array

# Cleanup temporary storage
data remove storage sorter:temp original_array
data remove storage sorter:temp copy_array
data remove storage sorter:temp sorted_array

