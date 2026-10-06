
#> switch:modes/fish_fight/calls/stop
#
# @within	switch:engine/signals/macro_stop
#

execute if data storage switch:main {current_game:"fish_fight"} run function switch:modes/fish_fight/stop

