
scoreboard players add #capture_the_flag_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

execute if score #capture_the_flag_seconds switch.data matches ..-1 run effect give @a[tag=!detached] jump_boost 100 250 true
execute if score #capture_the_flag_seconds switch.data matches ..-1 run effect give @a[tag=!detached] slowness 100 250 true
execute if score #capture_the_flag_seconds switch.data matches ..-1 run effect give @a[tag=!detached] blindness 100 250 true
execute if score #capture_the_flag_seconds switch.data matches ..-1 run effect give @a[tag=!detached] night_vision 100 250 true
execute if score #capture_the_flag_seconds switch.data matches ..-1 run effect give @a[tag=!detached] darkness 100 250 true
execute if score #capture_the_flag_seconds switch.data matches 0 run effect clear @a[tag=!detached]

# Summon the flags
execute if score #capture_the_flag_seconds switch.data matches 0 run function switch:modes/capture_the_flag/summon_flags

