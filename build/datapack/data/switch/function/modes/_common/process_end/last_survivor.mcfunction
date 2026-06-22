
#> switch:modes/_common/process_end/last_survivor
#
# @within	switch:modes/memory_mine/process_end {death:"switch:modes/memory_mine/death"}
#			switch:modes/tnt_run/process_end {death:"switch:modes/tnt_run/death"}
#
# @args		death (string)
#

scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 as @a[tag=!detached,gamemode=adventure] at @s run function switch:engine/add_win
function switch:translations/common/process_end_winner_adventure
execute if score #process_end switch.data matches 1 run gamemode spectator @a[tag=!detached]
$execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function $(death)
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

execute if score #process_end switch.data matches 200 run function switch:engine/restart

