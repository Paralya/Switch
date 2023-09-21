
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 run function switch:modes/build_battle/rating_time/end_calculation

execute if score #process_end switch.data matches 150 run function switch:engine/restart

