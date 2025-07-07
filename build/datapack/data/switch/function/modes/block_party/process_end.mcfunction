
#> switch:modes/block_party/process_end
#
# @within	switch:modes/block_party/tick
#

scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game
execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 as @a[tag=!detached,gamemode=!spectator] at @s run function switch:engine/add_win
execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 as @a[tag=!detached,gamemode=!spectator] run function switch:modes/block_party/record_save
function switch:translations/modes_block_party_process_end

execute if score #process_end switch.data matches 100 run function switch:engine/restart

