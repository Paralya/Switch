
#> switch:modes/rush_the_flag/flag_reset
#
# @executed	as @e[type=item_display,tag=switch.flag,sort=random] & at @s & positioned ~ ~-2 ~
#
# @within	switch:modes/rush_the_flag/flag_tick
#			switch:modes/rush_the_flag/score_point
#

# Advancement
execute unless score #test_mode switch.data matches 1 if entity @s[tag=switch.blue_flag] run advancement grant @p[team=switch.rush_the_point.blue,distance=..1] only switch:visible/81
execute unless score #test_mode switch.data matches 1 if entity @s[tag=switch.red_flag] run advancement grant @p[team=switch.rush_the_point.red,distance=..1] only switch:visible/81

# Flag Reset Blue
execute if entity @s[tag=switch.blue_flag] on vehicle run tp @s 14077 99 14000 -90 0
execute if entity @s[tag=switch.blue_flag] run data modify entity @s Rotation[0] set value -90.0f
execute if entity @s[tag=switch.blue_flag] run tag @a[tag=switch.has_blue_flag] remove switch.has_blue_flag

# Flag Reset Red
execute if entity @s[tag=switch.red_flag] on vehicle run tp @s 13923 99 14000 90 0
execute if entity @s[tag=switch.red_flag] run data modify entity @s Rotation[0] set value 90.0f
execute if entity @s[tag=switch.red_flag] run tag @a[tag=switch.has_red_flag] remove switch.has_red_flag
function switch:translations/modes_rush_the_flag_flag_reset

# Reset Banner
data modify entity @s[tag=switch.blue_flag] item set value {id:"blue_banner",count:1}
data modify entity @s[tag=switch.red_flag] item set value {id:"red_banner",count:1}
data modify entity @s transformation.translation[1] set value -1.5f
tag @s add switch.original_pos
tag @s add switch.free

