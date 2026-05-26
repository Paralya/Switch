
#> switch:modes/race/stop
#
# @within	switch:modes/race/calls/stop
#

execute at @e[tag=switch.checkpoint] run forceload remove ~ ~
execute at @e[tag=switch.effect_block] run forceload remove ~ ~

# Safe kill karts and checkpoints
function switch:utils/safe_kill_macro {selector:"@e[tag=switch.vehicle]"}
function switch:utils/safe_kill_macro {selector:"@e[tag=switch.checkpoint]"}

schedule clear switch:modes/race/give_items
schedule clear switch:modes/race/post_load

function switch:modes/race/stop_cleanup

