
#> switch:modes/block_party/core/remake_list/move_index
#
# @within	switch:modes/block_party/core/remake_list/shuffle with storage switch:temp input
#
# @args		index (int)
#

$data modify storage switch:temp new append from storage switch:maps block_party[$(index)]
$data remove storage switch:maps block_party[$(index)]

