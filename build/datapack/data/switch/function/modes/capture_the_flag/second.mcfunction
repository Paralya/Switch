
#> switch:modes/capture_the_flag/second
#
# @within	switch:modes/capture_the_flag/calls/second
#

# Increment game timer and decrement remaining time if greater than 0
scoreboard players add #capture_the_flag_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

# Before game starts (negative seconds) - Apply effects to freeze players
execute if score #capture_the_flag_seconds switch.data matches ..-1 as @a[tag=!detached] run attribute @s jump_strength base set 0
execute if score #capture_the_flag_seconds switch.data matches ..-1 run effect give @a[tag=!detached] slowness 100 250 true
execute if score #capture_the_flag_seconds switch.data matches ..-1 run effect give @a[tag=!detached] blindness 100 250 true
execute if score #capture_the_flag_seconds switch.data matches ..-1 run effect give @a[tag=!detached] night_vision 100 250 true
execute if score #capture_the_flag_seconds switch.data matches ..-1 run effect give @a[tag=!detached] darkness 100 250 true

# When game starts (0 seconds) - Remove freeze effects
execute if score #capture_the_flag_seconds switch.data matches 0 run effect clear @a[tag=!detached] slowness
execute if score #capture_the_flag_seconds switch.data matches 0 run effect clear @a[tag=!detached] blindness
execute if score #capture_the_flag_seconds switch.data matches 0 run effect clear @a[tag=!detached] night_vision
execute if score #capture_the_flag_seconds switch.data matches 0 run effect clear @a[tag=!detached] darkness
execute if score #capture_the_flag_seconds switch.data matches 0 as @a[tag=!detached] run attribute @s jump_strength base reset

# Clear empty glass bottles from players
execute if score #capture_the_flag_seconds switch.data matches 1.. run clear @a[tag=!detached] glass_bottle

# Summon the flags when game starts
execute if score #capture_the_flag_seconds switch.data matches 0 run function switch:modes/capture_the_flag/flags_summon

# Display game messages
function switch:translations/modes_capture_the_flag_second

