
#> switch:modes/block_party/calls/tick
#
# @within	switch:engine/signals/macro_tick
#

execute if data storage switch:main {current_game:"block_party"} run function switch:modes/block_party/tick

