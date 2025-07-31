
#> switch:modes/capture_the_flag/flag_pickup
#
# @executed	as @e[type=item_display,tag=switch.flag,sort=random] & at @s & positioned ~ ~ ~
#
# @within	switch:modes/capture_the_flag/flag_tick
#

# Remove free tag and original_pos tag
tag @s remove switch.original_pos
tag @s remove switch.free

# Depending on the flag color, tag the respective player
execute if entity @s[tag=switch.blue_flag] run tag @p[team=switch.temp.red,distance=..1] add switch.has_blue_flag
execute if entity @s[tag=switch.red_flag] run tag @p[team=switch.temp.blue,distance=..1] add switch.has_red_flag
function switch:translations/modes_capture_the_flag_flag_pickup

# Translation & Playsound
execute as @a[tag=!detached] at @s run playsound entity.experience_orb.pickup ambient @s

