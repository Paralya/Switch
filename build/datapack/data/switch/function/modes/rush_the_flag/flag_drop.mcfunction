
#> switch:modes/rush_the_flag/flag_drop
#
# @executed	as @e[type=item_display,tag=switch.flag,sort=random] & at @s & positioned ~ ~-2 ~
#
# @within	switch:modes/rush_the_flag/flag_tick
#

# Drop the flag
function switch:translations/modes_rush_the_flag_flag_drop
execute if entity @s[tag=switch.blue_flag] run kill @a[tag=switch.has_blue_flag]
execute if entity @s[tag=switch.red_flag] run kill @a[tag=switch.has_red_flag]
execute if entity @s[tag=switch.blue_flag] run tag @a[tag=switch.has_blue_flag] remove switch.has_blue_flag
execute if entity @s[tag=switch.red_flag] run tag @a[tag=switch.has_red_flag] remove switch.has_red_flag
data modify entity @s[tag=switch.blue_flag] item set value {id:"blue_banner",count:1}
data modify entity @s[tag=switch.red_flag] item set value {id:"red_banner",count:1}
data modify entity @s transformation.translation[1] set value -1.5f

# Add free tag
tag @s add switch.free

