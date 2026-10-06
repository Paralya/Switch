
#> switch:modes/fish_fight/calls/tick
#
# @within	switch:engine/signals/macro_tick
#

execute if data storage switch:main {current_game:"fish_fight"} run function switch:modes/fish_fight/tick

