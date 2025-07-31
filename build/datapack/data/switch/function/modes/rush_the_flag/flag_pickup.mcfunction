
#> switch:modes/rush_the_flag/flag_pickup
#
# @executed	as @e[type=item_display,tag=switch.flag,sort=random] & at @s & positioned ~ ~-2 ~
#
# @within	switch:modes/rush_the_flag/flag_tick
#

# Remove free tag and original_pos tag
tag @s remove switch.original_pos
tag @s remove switch.free

# Depending on the flag color, tag the respective player
execute if entity @s[tag=switch.blue_flag] run tag @p[team=switch.rush_the_point.red,distance=..1] add switch.has_blue_flag
execute if entity @s[tag=switch.red_flag] run tag @p[team=switch.rush_the_point.blue,distance=..1] add switch.has_red_flag
function switch:translations/modes_rush_the_flag_flag_pickup
data remove entity @s item

# Translation & Playsound
data modify entity @s transformation.translation[1] set value 0.69f
execute as @a[tag=!detached] at @s run playsound entity.experience_orb.pickup ambient @s

