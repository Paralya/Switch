
#> switch:utils/list/desc/sort
#
# @executed	in switch:game
#
# @within	switch:stats/sort_minigames_stats/update_minigame
#

# Create a scoreboard objective and storage for temporary values
scoreboard objectives add sorter.val dummy
data modify storage sorter:temp original_array set from storage switch:temp list
data modify storage sorter:temp sorted_array set value []

scoreboard players set #sorted_count sorter.val 0

# Start the selection sort process
execute if data storage sorter:temp original_array[0] run function switch:utils/list/desc/selection_sort_loop
data modify storage switch:temp list set from storage sorter:temp sorted_array

# Cleanup temporary storage
data remove storage sorter:temp original_array
data remove storage sorter:temp copy_array
data remove storage sorter:temp sorted_array

