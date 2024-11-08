
#> switch:modes/block_party/core/remake_list/shuffle
#
# @within	switch:modes/block_party/core/remake_list/main
#			switch:modes/block_party/core/remake_list/shuffle
#

# Get random
scoreboard players operation #modulo_rand switch.data = #art_count switch.data
scoreboard players remove #art_count switch.data 1
function switch:utils/get_random/

# Move from first list to new
data modify storage switch:temp input set value {index:0}
execute store result storage switch:temp input.index int 1 run scoreboard players get #random switch.data
function switch:modes/block_party/core/remake_list/move_index with storage switch:temp input

# Continue loop
execute if data storage switch:maps block_party[0] run function switch:modes/block_party/core/remake_list/shuffle

