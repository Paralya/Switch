
#> switch:modes/build_battle/second
#
# @executed	in switch:build_battle
#
# @within	switch:modes/build_battle/calls/second [ in switch:build_battle ]
#

scoreboard players add #build_battle_seconds switch.data 1

# Second loop for the preparation time
execute if score #build_battle_state switch.data matches 0 run function switch:modes/build_battle/preparation/second

# Second loop for the building time
execute if score #build_battle_state switch.data matches 1 run function switch:modes/build_battle/building_time/second

# Second loop for the voting time
execute if score #build_battle_state switch.data matches 2 run function switch:modes/build_battle/rating_time/second

# Prevent people from leaving area
execute if score #build_battle_state switch.data matches ..1 as @a[tag=!detached,gamemode=!spectator,scores={switch.temp.id=0..}] run function switch:modes/build_battle/prevent_leaving_area

