
#> switch:modes/boat_race/start
#
# @within	switch:modes/boat_race/calls/start
#

# Choose map
scoreboard players set #is_adventure switch.data 1
function switch:utils/choose_map_for {id:"boat_race", maps:["boat_race_1","boat_race_2"]}

scoreboard players set @a[tag=!detached] switch.alive 1
effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] weakness infinite 255 true
effect give @a[tag=!detached] resistance infinite 255 true

function switch:utils/set_dynamic_time

function switch:translations/modes_boat_race_start

scoreboard players set #remaining_time switch.data 488
scoreboard players set #boat_race_seconds switch.data -8
scoreboard players set #boat_race_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #detect_end switch.data 0

