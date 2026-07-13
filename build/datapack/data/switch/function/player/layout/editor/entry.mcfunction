
#> switch:player/layout/editor/entry
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/trigger/main
#

scoreboard players set @s switch.trigger.layout 0
execute if entity @s[tag=detached] run return 0
execute if entity @s[team=switch.tutorial] run return 0
execute if score #engine_state switch.data matches 2..3 run return run function switch:player/translations/layout_editor_unavailable
execute if entity @s[tag=switch.layout_editor] run return run function switch:player/layout/editor/save_and_close
function switch:player/layout/editor/open

