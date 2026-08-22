
#> switch:player/trigger/succes/mode_section
#
# @executed	in minecraft:overworld
#
# @within	switch:player/trigger/succes/main with storage switch:main input
#
# @args		current_game (unknown)
#			player (unknown)
#

data modify storage switch:temp ids set value []
$data modify storage switch:temp ids set from storage switch:advancements by_mode.$(current_game)
execute unless data storage switch:temp ids[0] run return 0

data modify storage switch:temp mode_copy set value []
function switch:player/trigger/succes/mode_collect with storage switch:temp ids[0]

tellraw @s ""
function switch:player/translations/trigger_succes_mode

data modify storage switch:temp copy set from storage switch:temp mode_copy
$execute if data storage switch:temp copy[0] run data modify storage switch:temp copy[0].player set value "$(player)"
execute if data storage switch:temp copy[0] run function switch:player/trigger/succes/display_loop with storage switch:temp copy[0]

data modify storage switch:temp copy set from storage switch:temp mode_copy
$execute if data storage switch:temp copy[0] run data modify storage switch:temp copy[0].player set value "$(player)"
execute if data storage switch:temp copy[0] run function switch:player/trigger/succes/display_loop_2 with storage switch:temp copy[0]

