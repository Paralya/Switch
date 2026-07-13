
#> switch:player/practice/disable
#
# @executed	as @a[tag=!...]
#
# @within	switch:engine/start_state [ as @a[tag=!...] ]
#			switch:player/layout/editor/open
#			switch:player/trigger/attach/real_attach
#			switch:player/trigger/detach/basic_stuff
#

execute unless entity @s[tag=switch.practice] run return fail
tag @s remove switch.practice
function switch:player/practice/music_stop
function switch:player/practice/clear_checkpoints

