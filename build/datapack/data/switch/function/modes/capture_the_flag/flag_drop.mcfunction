
#> switch:modes/capture_the_flag/flag_drop
#
# @within	switch:modes/capture_the_flag/flag_tick
#

# Drop the flag
function switch:translations/modes_capture_the_flag_flag_drop
execute if entity @s[tag=switch.blue_flag] run kill @a[tag=switch.has_blue_flag]
execute if entity @s[tag=switch.red_flag] run kill @a[tag=switch.has_red_flag]
execute if entity @s[tag=switch.blue_flag] run tag @a[tag=switch.has_blue_flag] remove switch.has_blue_flag
execute if entity @s[tag=switch.red_flag] run tag @a[tag=switch.has_red_flag] remove switch.has_red_flag
execute on vehicle run tp @s ~ ~-2 ~

# Add free tag
tag @s add switch.free

