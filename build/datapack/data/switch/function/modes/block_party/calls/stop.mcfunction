
#> switch:modes/block_party/calls/stop
#
# @within	switch:engine/signals/macro_stop
#

execute if data storage switch:main {current_game:"block_party"} run function switch:modes/block_party/stop

