
#> switch:modes/capture_the_flag/flag_reset
#
# @within	switch:modes/capture_the_flag/flag_tick
#			switch:modes/capture_the_flag/score_point
#

# Advancement
execute unless score #test_mode switch.data matches 1 if entity @s[tag=switch.blue_flag] run advancement grant @p[team=switch.temp.blue,distance=..1] only switch:visible/81
execute unless score #test_mode switch.data matches 1 if entity @s[tag=switch.red_flag] run advancement grant @p[team=switch.temp.red,distance=..1] only switch:visible/81

# Copy initial pos and rotation
data modify storage switch:temp Pos set from entity @s item.components."minecraft:custom_data".Pos
data modify storage switch:temp Rotation set from entity @s item.components."minecraft:custom_data".Rotation
execute on vehicle run data modify entity @s Pos set from storage switch:temp Pos
execute on vehicle run data modify entity @s Rotation set from storage switch:temp Rotation
data modify entity @s Rotation set from storage switch:temp Rotation

# Flag Reset Blue
execute if entity @s[tag=switch.blue_flag] run tag @a[tag=switch.has_blue_flag] remove switch.has_blue_flag

# Flag Reset Red
execute if entity @s[tag=switch.red_flag] run tag @a[tag=switch.has_red_flag] remove switch.has_red_flag
function switch:translations/modes_capture_the_flag_flag_reset

# Reset Banner
tag @s add switch.original_pos
tag @s add switch.free

