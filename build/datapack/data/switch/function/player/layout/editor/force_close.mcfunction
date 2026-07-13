
#> switch:player/layout/editor/force_close
#
# @executed	as @a[tag=!...]
#
# @within	switch:engine/start_state [ as @a[tag=!...] ]
#			switch:player/trigger/attach/real_attach
#			switch:player/trigger/detach/basic_stuff
#

execute unless entity @s[tag=switch.layout_editor] run return 0
tag @s remove switch.layout_editor
clear @s

