
#> switch:modes/block_party/core/get_block_count_loop
#
# @executed	positioned ~ ~ ~1
#
# @within	switch:modes/block_party/core/get_block_count_loop [ positioned ~ ~ ~1 ]
#			switch:modes/block_party/core/pick_block [ at @s & positioned ~ ~ ~65 ]
#

# Add block count and continue loop if not air
scoreboard players add #block_count switch.data 1
execute positioned ~ ~ ~1 unless block ~ ~ ~ air run function switch:modes/block_party/core/get_block_count_loop

