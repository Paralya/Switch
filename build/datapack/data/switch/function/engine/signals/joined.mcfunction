
#> switch:engine/signals/joined
#
# @within	switch:player/make_join
#			switch:player/trigger/attach/real_attach
#

# Launch joined signal
data modify storage switch:main input set value {id:""}
data modify storage switch:main input.id set from storage switch:main current_game
function switch:engine/signals/macro_joined with storage switch:main input

