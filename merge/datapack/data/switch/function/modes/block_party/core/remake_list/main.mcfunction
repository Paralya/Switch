
# Get the number of pixel arts for the game
data modify storage switch:maps block_party set value []
execute positioned 110008 248 110008 run function switch:modes/block_party/core/remake_list/get_art_count_loop

# Create a new list with randomized order
data modify storage switch:temp new set value []
function switch:modes/block_party/core/remake_list/shuffle

# Apply new list
data modify storage switch:maps block_party set from storage switch:temp new

