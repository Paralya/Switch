
#> switch:modes/capture_the_flag/second
#
# @within	switch:modes/capture_the_flag/calls/second
#

scoreboard players add #capture_the_flag_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

execute if score #capture_the_flag_seconds switch.data matches ..-1 as @a[tag=!detached] run attribute @s jump_strength base set 0
execute if score #capture_the_flag_seconds switch.data matches ..-1 run effect give @a[tag=!detached] slowness 100 250 true
execute if score #capture_the_flag_seconds switch.data matches ..-1 run effect give @a[tag=!detached] blindness 100 250 true
execute if score #capture_the_flag_seconds switch.data matches ..-1 run effect give @a[tag=!detached] night_vision 100 250 true
execute if score #capture_the_flag_seconds switch.data matches ..-1 run effect give @a[tag=!detached] darkness 100 250 true
execute if score #capture_the_flag_seconds switch.data matches 0 as @a[tag=!detached] run attribute @s jump_strength base set 0.42

# Summon the flags
execute if score #capture_the_flag_seconds switch.data matches 0 run function switch:modes/capture_the_flag/flags_summon

function switch:translations/modes_capture_the_flag_second

