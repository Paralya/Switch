
#> switch:v2.0.0/load/confirm_load
#
# @within	switch:v2.0.0/load/valid_dependencies
#

# Confirm load
tellraw @a[tag=convention.debug] {"text":"[Loaded Switch v2.0.0]","color":"green"}
scoreboard players set #switch.loaded load.status 1
function switch:v2.0.0/load/set_items_storage

function switch:load

