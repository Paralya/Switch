
#> switch:modes/rush_the_flag/flag_drop
#
# @executed	as @e[type=item_display,tag=switch.flag,sort=random] & at @s & positioned ~ ~-2 ~
#
# @within	switch:modes/rush_the_flag/flag_tick
#

# Drop the flag
function switch:modes/rush_the_flag/translations/flag_drop
function switch:modes/_common/flag/release_holders
data modify entity @s[tag=switch.blue_flag] item set value {id:"blue_banner",count:1}
data modify entity @s[tag=switch.red_flag] item set value {id:"red_banner",count:1}
data modify entity @s transformation.translation[1] set value -1.5f

# Add free tag
tag @s add switch.free

