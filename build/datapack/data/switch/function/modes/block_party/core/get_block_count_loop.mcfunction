
#> switch:modes/block_party/core/get_block_count_loop
#
# @within	switch:modes/block_party/core/get_block_count_loop
#			switch:modes/block_party/core/pick_random_art
#

# Add block count and continue loop if not air
scoreboard players add #block_count switch.data 1
function switch:translations/modes_block_party_core_get_block_count_loop
execute positioned ~ ~ ~1 unless block ~ ~ ~ air run function switch:modes/block_party/core/get_block_count_loop

