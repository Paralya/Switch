
#> switch:modes/snowball_painter/process_end
#
# @within	switch:modes/snowball_painter/tick
#

scoreboard players add #process_end switch.data 1

kill @e[type=marker,tag=switch.marker]
kill @e[type=snowball,tag=switch.marker]
function switch:modes/_common/process_end/winner_by_points
execute if score #process_end switch.data matches 1 run gamemode spectator @a[tag=!detached]
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:modes/snowball_painter/death
execute if score #process_end switch.data matches 1 unless score #test_mode switch.data matches 1 run advancement grant @a[tag=!detached,scores={switch.temp.points=51}] only switch:visible/39
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

execute if score #process_end switch.data matches 200 run function switch:engine/restart

