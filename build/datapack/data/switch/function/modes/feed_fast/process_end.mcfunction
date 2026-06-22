
#> switch:modes/feed_fast/process_end
#
# @within	switch:modes/feed_fast/tick
#

scoreboard players add #process_end switch.data 1

function switch:modes/_common/process_end/winner_by_points
execute if score #process_end switch.data matches 1 run gamemode spectator @a[tag=!detached]
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:modes/feed_fast/death
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

# Obligatoire
execute if score #process_end switch.data matches 200 run function switch:engine/restart

