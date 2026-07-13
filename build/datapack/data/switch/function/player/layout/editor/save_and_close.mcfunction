
#> switch:player/layout/editor/save_and_close
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/layout/editor/entry
#			switch:player/layout/editor/tick
#

function switch:player/layout/editor/read
tag @s remove switch.layout_editor
clear @s
function switch:player/translations/layout_editor_saved
playsound entity.player.levelup ambient @s

