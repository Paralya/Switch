
#> switch:modes/_common/process_end/winner_by_health
#
# @within	switch:modes/castagne/process_end {death:"switch:modes/castagne/death"}
#			switch:modes/cigogne/process_end {death:"switch:modes/cigogne/death"}
#			switch:modes/pillars_of_fortune/process_end {death:"switch:modes/pillars_of_fortune/death"}
#
# @args		death (string)
#

scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 store result score #health switch.data run data get entity @r[gamemode=survival] Health
execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 as @a[tag=!detached,gamemode=survival] at @s run function switch:engine/add_win
function switch:translations/common/process_end_winner_health
$execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function $(death)
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

