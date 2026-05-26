
#> switch:modes/kart_racer/stop
#
# @within	switch:modes/kart_racer/calls/stop
#			switch:modes/kart_racer/restart_game
#

execute at @e[tag=switch.checkpoint] run forceload remove ~ ~
execute at @e[tag=switch.effect_block] run forceload remove ~ ~

# Safe kill karts and checkpoints
function switch:utils/safe_kill_macro {selector:"@e[tag=shopping_kart.kart]"}
function switch:utils/safe_kill_macro {selector:"@e[tag=switch.checkpoint]"}

schedule clear switch:modes/kart_racer/give_items
schedule clear switch:modes/kart_racer/post_load

function switch:modes/race/stop_cleanup

