
#> switch:modes/layers_4_teams/calls/tick
#
# @within	switch:engine/signals/macro_tick
#

execute if data storage switch:main {current_game:"layers_4_teams"} run function switch:modes/layers_4_teams/tick

