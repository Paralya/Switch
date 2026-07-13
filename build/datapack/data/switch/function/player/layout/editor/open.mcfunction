
#> switch:player/layout/editor/open
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/layout/editor/entry
#

function switch:player/practice/disable
tag @s add switch.layout_editor
function switch:player/layout/editor/give_markers
function switch:player/translations/layout_editor_open
playsound block.note_block.bell ambient @s

