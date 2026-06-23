
#> switch:modes/_common/flag/release_holders
#
# @executed	as @e[type=item_display,tag=switch.flag,sort=random] & at @s & positioned ~ ~ ~
#
# @within	switch:modes/capture_the_flag/flag_drop
#			switch:modes/rush_the_flag/flag_drop
#

execute if entity @s[tag=switch.blue_flag] run kill @a[tag=switch.has_blue_flag]
execute if entity @s[tag=switch.red_flag] run kill @a[tag=switch.has_red_flag]
execute if entity @s[tag=switch.blue_flag] run tag @a[tag=switch.has_blue_flag] remove switch.has_blue_flag
execute if entity @s[tag=switch.red_flag] run tag @a[tag=switch.has_red_flag] remove switch.has_red_flag

