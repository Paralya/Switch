
#> switch:modes/build_battle/calls/second
#
# @within	switch:engine/signals/macro_second
#

execute if data storage switch:main {current_game:"build_battle"} in switch:build_battle run function switch:modes/build_battle/second

